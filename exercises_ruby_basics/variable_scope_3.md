What will the following code print out?

```ruby
a = 7

def my_value(b)
  a = b
end

my_value(a + 5)
puts a
# 7
```

* Inside the method definition, a new variable `a` is initialized and given the value of `b`, which in the method call is `a + 5`. The method will return `12`, but the value of `a` is unchanged (same argument as in [[Variable_scope_1]] and [[Variable_scope_2]]).