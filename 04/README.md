# 4. Rendering Views

|本期版本|上期版本
|:---:|:---:
`Mon Jul 10 00:24:19 CST 2023` |


## Controller Names

```ruby
klass = "MeanPeopleController".gsub(/Controlle$/, '')
Rulers.to_underscore klass #=> mean_people
```


**Exercise Three: Rake Targets for Tests**

> `@TODO`

```ruby
require "rake/testtask"
```

## Ref

* <https://ruby-doc.org/3.1.4/stdlibs/erb/ERB.html>
* <https://rubygems.org/gems/erubis>
* ~~[Erubis 重生了](https://ruby-china.org/topics/32186)~~
* `@TODO`: <https://github.com/jeremyevans/tilt>