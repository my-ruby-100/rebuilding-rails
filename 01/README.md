# 1. Zero to “It Works!”

|本期版本|上期版本
|:---:|:---:
`Thu Aug 22 22:38:54 CST 2024` | `Sun Jul  9 10:17:38 CST 2023`

## In the Rough

```bash
bundle gem rulers
gem build rulers.gemspec
```

* newer versions of Bundler use a different method call: `add_dependency` instead of `add_runtime_dependency`



```ruby
run BestQuotes::Application.new
```

**Rails**

* `ActiveSupport`
* `ActiveModel`
* `ActiveRecord`
* `ActionPack`
* `ActionMailer`

## Ref


* [`add_dependency`](https://ruby-doc.org/3.1.4/stdlibs/rubygems/Gem/Specification.html#method-i-add_dependency)
* [`$LOAD_PATH`](https://ruby-doc.org/3.1.4/globals_rdoc.html)
* [`File.join`](https://ruby-doc.org/3.1.4/File.html#method-c-join)、[`File.expand_path`](https://ruby-doc.org/3.1.4/File.html#method-c-expand_path)
* [`__FILE__`](https://ruby-doc.org/3.1.4/keywords_rdoc.html)
* [`Kernel#require_relative`](https://ruby-doc.org/3.1.4/Kernel.html#method-i-require_relative)
