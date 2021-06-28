What will the following code print, and why?

```ruby
a = 7
array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a
# 3
```

* My comment:  `a` is assigned `element` inside a block, which means it's available. It therefore is assigned a new value for each iteration, and ends up with the last value, `3`.
* Solution notes
  * We're dealing with a [[method invocation]] that has a [[block]] → **the block can use and modify local variables that are defined outside the block**.