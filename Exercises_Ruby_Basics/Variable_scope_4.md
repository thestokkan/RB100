What will the following code print out?

```ruby
a = "Xyzzy"

def my_value(b)
  b[2] = '-'
end

my_value(a)
puts a
# Xy-zy
```

* Solution notes
  * What's happening: We are modifying the string referenced by `b`, and `b` references the same string as `a` → `a` is updated.
  * Difference from problems 1-3: We're working with a [[string]], and **we're assigning to `b[2]` instead of `b`** 
    * **Strings are mutable**
    * The object method **`String#[]=` is a mutating method** 

