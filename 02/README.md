# 2. Your First Controller

|本期版本|上期版本
|:---:|:---:
`Fri Aug 23 15:25:52 CST 2024` | `Sun Jul  9 11:15:28 CST 2023`


## Routing Around

```ruby
klass, act = get_controller_and_action(env)
controller = klass.new(env)
text = controller.send(act)
```


---

`/favicon.ico`

```
# http://mysite.com/people/create
# PeopleController#create
```

## It Almost Worked!

* `/favicon.ico`、`Favicon.icoController`


## Ref

* [`File.dirname`](https://ruby-doc.org/3.1.4/File.html#method-c-dirname)
* [`Module#const_get`](https://ruby-doc.org/3.1.4/Module.html#method-i-const_get)