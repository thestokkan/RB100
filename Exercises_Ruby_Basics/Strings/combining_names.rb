
# Combining Names
#
# Using the following code, combine the two names together to form a full name and assign that value to a variable named full_name. Then, print the value of full_name.
#
first_name = 'John'
last_name = 'Doe'
#
# Expected output:
#
# John Doe

# Answer (CORRECT):
full_name = first_name + ' ' + last_name
puts '1. ' + full_name


# Further Exploration
#
# Can you think of at least two additional ways to combine a first and last name into a full name?

# All answers:

first_name = 'John'
last_name = 'Doe'

# 1. Using String#+
full_name = first_name + ' ' + last_name
puts '1. ' + full_name

# 2. String interpolation
full_name2 = "#{first_name} #{last_name}"
puts '2. ' + full_name2

# 3. Using String#concat
full_name3 = ''
full_name3 = full_name3.concat(first_name)
full_name3 = full_name3.concat(' ', last_name)
puts '3. ' + full_name3

# 4. Using the shovel (append) operator
full_name4 = ''
full_name4 << first_name
full_name4 << ' ' << last_name
puts '4. ' + full_name4

# 5. Using an array and Array#join
full_name5 = [first_name, last_name].join(' ')
puts '5. ' + full_name5
