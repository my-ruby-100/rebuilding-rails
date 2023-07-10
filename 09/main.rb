$rulers = []
def match(url, *args)
  options = {}

  #   match ":controller/:id",
  #     :default = > { "action" => "show"}
  #
  # options[:default] = {"action" => "show"}
  options = args.pop if args[-1].is_a?(Hash)
  options[:default] ||= {}


  # match "sub-app", proc { [200, {}, ["Hello, sub-app!"]] }

  # dest = proc { [200, {}, ["Hello, sub-app!"]] }
  dest = nil
  dest = args.pop if args.size > 0
  raise "Too many args!" if args.size > 0

  parts = url.split("/")
  parts.select! { |p| !p.empty? }


  vars = []
  regexp_parts = parts.map do |part|
    if part[0] == ":"
      # :controller
      vars << part[1..-1]
      "([a-zA-Z0-9]+)"
    elsif part[0] == "*"
      # *rest
      vars << part[1..-1]
      "(.*)"
    else
      # rack-intro
      part
    end
  end

  regexp = regexp_parts.join("/")

  $rulers.push({
    :regexp => Regexp.new("^/#{regexp}$"),
    :vars => vars,
    :dest => dest,
    :options => options
  })

end


def check_url(url)
  $rulers.each do |r|
    m = r[:regexp].match(url)

  

    if m
      
      options = r[:options]
      params = options[:default].dup
      
      r[:vars].each_with_index do |v, i|
        params[v] =m.captures[i]
      end


      dest = nil
      if r[:des]
        return get_dest(r[:dest], params)
      else
        controller = params["controller"]
        action = params["action"]
        return get_dest("#{controller}" + "##{action}", params)
      end


    end
  end
  nil
end


def get_dest(dest, routing_params = {})
  return dest if dest.respond_to?(:call)
  if dest =~ /^([^#]+)#([^#]+)$/
    name = $1.capitalize
    cont = Object.const_get("#{name}Controller")
    return cont.action($2, routing_params)
  end
  raise "No destination: #{dest.inspect}!"
end

match "", "quotes#index"
match "sub-app", proc { [200, {}, ["Hello, sub-app!"]] }

# default routes
match ":controller/:id/:action"
match ":controller/:id",
  :default => { "action" => "show" }
match ":controller",
  :default => { "action" => "index" }

# puts $rulers

check_url('/guxiaobai/test')


# match ":controller/:action/:id", :via => :post
# match "posts/ajax/:action", :controller => :posts
# match "api/search/*rest", "api#search"
# match "admin/login", "devise#new_session"
# match "rack-intro", "pages#show", :defaults => { :id => 37 }
# match "mini-rack/*args", my_rack_application
# match "photos/:id", "photos#show",
#   :defaults => { :user_id => 37 },
#   :via => [ :get, :post],
#   :constraints => { :user_id => /^\d+$/ }
