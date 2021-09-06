What will the following code print out?

```ruby
a = "Xyzzy"

def my_value(b)
  b = 'yzzyX'
end

my_value(a)
puts a
# Xyzzy
```

* My notes
  * This is [[reassignment]]: In the method call, `b` is assigned `a` and thus points to the same object as `a`. Next, `b` is being *reassigned* another value, which leaves `a` unchanged.
* Solution notes
  * **Assignment never changes the value of an object**, it creates a new object.
  * This is different from the case in [[Variable_scope_4]], where the string object was updated by the *mutating method*  `#[]`. 