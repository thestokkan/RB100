What will the following code print, and why?

```ruby
array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a
# NameError (undefined local variable or method `a' for main:Object)
```

* Solution notes
  * The local variable `a` that is initialized inside the [[block]] has a **scope that is local to the block**.

