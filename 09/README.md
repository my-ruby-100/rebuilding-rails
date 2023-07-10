# 9. Real Routing

|本期版本|上期版本
|:---:|:---:
`Mon Jul 10 13:27:43 CST 2023` |

## Controller Actions are Rack Apps

```ruby
rack_app = get_rack_app(env)
rack_app.call(env)
```


## Conﬁguring a Router

```ruby
def self.action(act, rp={})
  proc { |e| self.new(e).dispatch(act, rp) }
end
```