# 3. Rails Automatic Loading

|本期版本|上期版本
|:---:|:---:
`Fri Aug 23 15:41:08 CST 2024` | `Sun Jul  9 15:43:20 CST 2023`

## Where’s My Constant?

* `STDERR.puts`
* [`Module#const_missing`](https://ruby-doc.org/3.1.4/Module.html#method-i-const_missing)
* [`Module#const_get`](https://ruby-doc.org/3.1.4/Module.html#method-i-const_get)


## CamelCase and snake_case

```ruby
'Namespace::Controller'.gsub(/::/, '/') #=> Namespace/Controller
'BOBSays'.gsub(/([A-Z]+)([A-Z][a-z])/, '\1_\2') #=> BOB_Says
'a7D'.gsub(/([a-z\d])([A-Z])/, '\1_\2') #=> a7_D
```

* `BadAppleController`、`bad_apple_controller.rb`
* [`String#tr`](https://ruby-doc.org/3.1.4/String.html#method-i-tr)


## Reloading Means Convenience

```ruby
gem "rulers", :path => "../rulers"
```

```bash
bundle exec
```

## @TODO

* <https://github.com/guard/listen>
* <https://github.com/alexch/rerun/>