#### What's my value (part 1)

What will the following code print out?

```ruby
a = 7

def my_value(b)
  b += 10
end

my_value(a)
puts a
# 7
```

* My initial (WRONG) solution:
  * This is an example of [[pass by reference]]: `a` is passed into the method as an [[argument]] in the method call, which causes it to be assigned to the [[parameter]] `b` (equivalent to `b = a`).
  * Since `b` now points to the same object as `a`, it updates the object with `b += 10`
  * Since the object `a` pointed to is updated, `puts a` will output `17`. 
* CORRECT solution
  * `puts a # 7` ,
  * This is [[reassignment]], and **reassignment does not mutate variables**! It is true that `a` is passed by reference, but `b` is *reassigned* inside the method definition (`b += 10` is the same as `b = b + 10`).
  * Also, **numbers in Ruby are immutable** ⇒ impossible for `my_value` to mutate the value referenced by `b`, which means it cannot change the object referenced by `a`. 

