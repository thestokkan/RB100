#### 1. Methods without arguments

`new_string = "xyz".upcase`

`#upcase` does not mutate the caller (the object, here string, it's *applied to*), but *returns a new string*. If we wanted to change the original string, we could use the mutating/destructive method `#upcase!`. Both these methods are *instance methods* and must be appended to the string with a `.` between them. 

#### 2. Required arguments

With this array:

```ruby
a = %w(a b c d e) # => ("a", "b", "c", "d", "e")
```

use `Array#insert` to insert numbers 5, 6, and 7 between `'c'` and `'d'`:

- Docs: **Array#insert: insert(index, obj...) → ary**
  - The `#insert` method takes two or more arguments: the first argument is the `index` where the next argument(s) `obj` will be inserted. The `...` indicates that there may be one or more objects. The method is **mutating** and returns the modified array.

Solution:

```ruby
a.insert(3, 5, 6, 7)
=> ["a", "b", "c", 5, 6, 7, "d", "e"] 
```

#### 3. Optional arguments

What will the following code output?

```ruby
s = 'abc def ghi,jkl mno pqr,stu vwx yz'
puts s.split.inspect
# Split on (default) white space:
# => "["abc", "def", "ghi,jkl", "mno", "pqr,stu", "vwx", "yz"]"
# Split on comma
puts s.split(',').inspect
# => "["abc def ghi", "jkl mno pqr", "stu vwx yz"]"
# Split on comma, return a maximum of 2 substrings:
puts s.split(',', 2).inspect
# => "["abc def ghi", "jkl mno pqr, stu vwx yz"]"
```

- Questions/issues

  1. Why is `#inspect` called? → To provide a nicer output (see below). Could also have used `p` instead of `puts`)
  2. I get escaped quotes when calling `.inspect` → This only happens when I just call `s.split.inspect` without `puts` – it's the return value. The entire array is enclosed in quotation marks, so the quotations around the strings inside it must be escaped.

- Solution notes

  - **split(pattern=nil, [limit]) → an_array** shows two different ways of providing an [[optional argument]]:
    1. `pattern=nil` sets a default value
    2. `[]` in `[limit]` denotes an optional argument with no default value
  - `#split` is a **non-mutating** method

- Docs:

  - ==String#split==: **split(pattern=nil, [limit]) → an_array**

    * Splits string on `pattern` (can be `string` or `Regexp`). If `nil`, splits on whitespace (actually value of  `$;`, which defaults to `nil`)
    * Examples
      * `"apples, pears, oranges".split # ⇒ ["apples,", "pears,", "oranges"]` (note the comma!)
      * `"apples, pears, oranges".split(',') # ⇒ ["apples", " pears", " oranges"]` (note the space!)
    * `[limit]`
      * Omitted ⇒ trailing null fields are suppressed
      * `> 0` ⇒  `[limit]` number of substrings
        * E.g. `"apples, pears, oranges".split(',',2) # ⇒ ["apples", " pears, oranges"]` 
      * `= 1` ⇒ entire string as only entry in array
        * `"apples, pears, oranges".split(',',1) # ⇒ ["apples, pears, oranges"]` 
      * `< 0` ⇒ unlimited fields, does not suppress null fields
    * `str = ''` ⇒ `[]` (empty string returns empty array)

  - ==String#inspect==: **inspect → [[string]]** Creates string representation of self

    * Also aliased as `to_s`

    * Example

      ```ruby
      puts %w[one two three]
      # one
      # two
      # three
      # => nil
      puts %w[one two three].inspect
      # ["one, "two", "three"]
      # => nil
      p %w[one two three]
      # ["one, "two", "three"]
      # => ["one, "two", "three"]
      ```

      

