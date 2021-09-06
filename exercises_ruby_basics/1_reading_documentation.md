
My answer: https://ruby-doc.org

> LS encourages the use of https://docs.ruby-lang.org/en (almost identical to above)

- NB! Code blocks are dark text on dark background in macOS Firefox and Chrome... It shows up fine in Safari on mac and in Firefox and Command on iPad.
  - Temporary fix: right-click in box and choose "Inspect", uncheck "background".

#### 2. Documentation for `while` loop (docs.ruby-lang):

3. Choose ruby version
4. locate and click `control_expressions` in left menu
5. search for or scroll to section for `while` Loop.

#### 3. Return value of `while` 

The `while` loop returns `nil` by default. `break` can be used to return a value (which is passed to `break`)

#### 4. Return value of `break`

`break` returns the value that is passed to it. If no value is passed, it returns `nil`.

```ruby
while true
  break "Hello" if true
end
# => "Hello"

while true
  break if true
end
# => nil
```

#### 5. Large numbers that are easy to read

Docs: Pages > literals > [Numbers](https://docs.ruby-lang.org/en/2.7.0/doc/syntax/literals_rdoc.html#label-Numbers)

* Using scientific notation: `6.02E23` and `1.0e-10` (both `E` and `e` works)
* Using underscores: `13_263_432` evaluates to `13263432` (the position of `_` does not matter)

#### 6. My name as a symbol

Docs: Literals > [Symbols](https://docs.ruby-lang.org/en/2.7.0/doc/syntax/literals_rdoc.html#label-Symbols): A `Symbol` is referenced using a colon preceding the name: `:Therese` 

#### 7. String Class

Docs: Core API > Classes > [class String](https://docs.ruby-lang.org/en/2.7.0/String.html) 

* https://docs.ruby-lang.org/en/2.7.0/String.html
* https://ruby-doc.org/core-2.7.0/String.html

#### 8. Right justifying strings
[`#rjust`](https://docs.ruby-lang.org/en/2.7.0/String.html#method-i-rjust)
Use instance method `#rjust(intger, padstr=' ')`.  The method returns a `new_str` of length `integer` that is left padded with spaces (or other provided padding) if `integer` is larger than the length of the original string. If not, it returns the original string.

```ruby
"Hello".rjust(4) # => "Hello"
"Hello".rjust(10) # => "     Hello"
"Hello".rjust(10, '.') # => ".....Hello"
```

 
