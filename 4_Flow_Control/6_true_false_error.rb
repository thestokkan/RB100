(32 * 4) >= "129" # => Error (comparing integer and string)
847 == '847' # => false (integer 847 is not equal to string '847')

# String comparison: compares individual characters from left to right
'847' < '846' # => false
'847' > '846' # => true
'847' > '8478' # => false
'847' < '8478' # => true
