What will the following code print out?

```ruby
a = 7

def my_value(a)
  a += 10
end

my_value(a)
puts a
# 7
```

* My solution
  * This is an example of [[variable shadowing]] (is it? -> check!) The variable `a` is used both in the outer scope and the inner scope of the method definition, but it's not the same. 
  * Inside the mehod definition, the shadow variable is *reassigned* - it does not mutate the variable `a` in the outer scope (also, numbers in Ruby cannot be mutated).
* Solution notes
  * Method-definitions are *self-contained* with respect to local variables, so local variables are not visible inside the method definition. Also, `a` outside the method definition is a [[local variable]] and is thus not visible inside the method definition (it has no top-level visibility). 

