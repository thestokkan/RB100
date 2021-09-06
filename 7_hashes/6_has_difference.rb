# What's the difference between the two hashes that are created?

x = 'hi there'
my_hash = {x: "some value"}
# my_hash = {:x => "some value"}
# The symbol ':x' is used as a key
my_hash2 = {x => "some value"}
# my_hash2 = {"hi there" => "some value"}
# The value of the variable x, the string 'hi there', is used as a key.
