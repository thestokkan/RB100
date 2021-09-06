
## Breakfast, Lunch, or Dinner? (Part 1)

# What will the following code print? Why? Don't run it until you've attempted to answer.

def meal
  return 'Breakfast'
end

puts meal


# Answer: Breakfast (correct)
# The method returns the string, which is then printed when 'puts' is called on the method

#  Solution comment: The only way to ensure a specific return value, other than putting it as the last line, is to use return. When return is executed, it immediately exits the method, returning the provided value.


## Breakfast, Lunch, or Dinner? (Part 2)

# What will the following code print? Why? Don't run it until you've attempted to answer.

def meal
  'Evening'
end

puts meal

# Answer: Evening (correct)
# The string is implicitly returned by the method and printed using 'puts' when calling the method.


## Breakfast, Lunch, or Dinner? (Part 3)
#
# What will the following code print? Why? Don't run it until you've attempted to answer.

def meal
  return 'Breakfast'
  'Dinner'
end

puts meal

# Answer: Breakfast (correct)
# Even if 'Dinner' is the last line, 'return' will stop execution and exit the metho before it reaches this line.


## Breakfast, Lunch, or Dinner? (Part 4)
#
# What will the following code print? Why? Don't run it until you've attempted to answer.

def meal
  puts 'Dinner'
  return 'Breakfast'
end

puts meal

# Answer: Breakfast (WRONG)
# Since 'puts' is called on the method, I think it will only print the return value, which is 'Breakfast'. If the metod had been called without puts, only 'Dinner' would have been printed.

# Solution:
# Dinner
# Breakfast
# If the return value is 'Breakfast' then why are both "Dinner" and "Breakfast" printed?
# The answer is simple: there are two #puts which means there will be more than one value printed.


## Breakfast, Lunch, or Dinner? (Part 5)
#
# What will the following code print? Why? Don't run it until you've attempted to answer.

def meal
  'Dinner'
  puts 'Dinner'
end

p meal

# Answer: Dinner; nil (correct)
# The method will print 'Dinner', and since its 'puts' statement is the last line it will return 'nil'.



## Breakfast, Lunch, or Dinner? (Part 6)
#
# What will the following code print? Why? Don't run it until you've attempted to answer.

def meal
  return 'Breakfast'
  'Dinner'
  puts 'Dinner'
end

puts meal

# Answer: Breakfast (correct)
# The return statement exits the method before any of the other lines are executed.
