# To find out if a Hash includes a specific value, you could use the .has_value method:

myhash = {one: 1, two: 2, three: 3}

myval = 3
puts myhash.has_value?(myval) ? "Yes!" : "Nope"


# You could also use hash.values.include?
puts myhash.values.include?(3) # => true
puts myhash.values.include?(5) # => false

# To find out if a hash contains a specific key, you could use hash.include?
puts myhash.include?(:one) # => true
puts myhash.include?(:seven) # => false
