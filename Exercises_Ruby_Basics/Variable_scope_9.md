What will the following code print, and why?

```ruby
a = 7
array = [1, 2, 3]

array.each do |a|
  a += 1
end

puts a
# 7
```

* My comment: This demonstrates [[variable shadowing]]: The block uses the variable `a` that is initialized by the method call in `|a|`. It therefore does not change the value of local variable `a` that is initialized outside the block.
* Solution comment:
  * Shadowing occurs **when a block argument hides a local variable that is defined outside the block**.