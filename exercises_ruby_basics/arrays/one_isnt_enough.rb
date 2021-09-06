#
# One Isn't Enough
#
# Using the code below, select 'dog' from pets, add the return value to my_pets, then print the value of my_pets.
#
pets = ['cat', 'dog', 'fish', 'lizard']
my_pets = pets[2..3]
my_pets.pop
#
# Expected output:
#
# I have a pet fish and a pet dog!

# Answer (CORRECT):

my_pets.push(pets[1])

puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}!"
