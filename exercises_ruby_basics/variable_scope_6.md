What will the following code print out?

```ruby
a = 7

def my_value(b)
  b = a + a
end

my_value(a)
puts a
# Raises error
```

* Solution notes

  * Local variable `a` is not visible inside the scope of the method definition, and so the method call will raise an [[exception]]:

    ```ruby
    # `my_value': undefined local variable or method `a' for main:Object (NameError)
    ```

  