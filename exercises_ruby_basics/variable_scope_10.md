What will the following code print, and why?

```ruby
a = 7
array = [1, 2, 3]

def my_value(ary)
  ary.each do |b|
    a += b
  end
end

my_value(array)
puts a
# 7 -> WRONG
# NoMethodError (undefined method `+' for nil:NilClass)
```

* My (WRONG) solution
  * Cannot access `a` inside method definition, so `a` remains unchanged
* Solution notes
  * `a` at the top level is not visible inside the invocation of the `each` method since it's inside a method definition. 
* My comment: I missed that a was assigned using `+=`, which uses the value of `a` itself. This is not possible, of course, when there is no variable `a` to begin with.

