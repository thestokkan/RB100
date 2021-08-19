
puts "Unpredictable Weather (Part 1)"

# In the code below, sun is randomly assigned as 'visible' or 'hidden'.

sun = ['visible', 'hidden'].sample

# Write an if statement that prints "The sun is so bright!" if sun equals 'visible'.

# Answer (CORRECT):

if sun == 'visible'
  puts 'The sun is so bright!'
end



puts "Unpredictable Weather (Part 2)"

# Write an unless statement that prints "The clouds are blocking the sun!" unless sun equals 'visible'.

# Answer (CORRECT):

unless sun == 'visible'
  puts "The clouds are blocking the sun!"
end


puts "Unpredictable Weather (Part 3)"

# Write an if statement that prints "The sun is so bright!" if sun equals visible. Also, write an unless statement that prints "The clouds are blocking the sun!" unless sun equals visible.
#
# When writing these statements, take advantage of Ruby's expressiveness and use statement modifiers instead of an if...end statement to print results only when some condition is met or not met.


# Answer 1 (CORRECT):
puts 'The sun is so bright!' if sun == 'visible'
puts "The clouds are blocking the sun!" unless sun == 'visible'

# Answer 2 (not usin if or unless):
puts sun == 'visible' ? 'The sun is so bright!' : "The clouds are blocking the sun!"
