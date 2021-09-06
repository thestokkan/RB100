#
# Are You There?
#
# Using the following code, print true if colors includes the color 'yellow' and print false if it doesn't. Then, print true if colors includes the color 'purple' and print false if it doesn't.
#
colors = 'blue pink yellow orange'
#
# Expected output:
#
# true
# false

# Answer (correct-ish):

puts colors.include?('yellow') ? 'true' : 'false'
puts colors.include?('purple') ? 'true' : 'false'

# Solution:
puts colors.include?('yellow')
puts colors.include?('purple')


# Further Exploration
#
# Let's say colors is changed to the following value:
#
colors = 'blue boredom yellow'
#
# and we invoke #include? as we did before:
#
puts colors.include?('red')
#
# What will the output be? Why?

# Answer:
# true
# String#include? does not look for complete words, so since 'boredom' includes the letter sequence 'red', the code will output 'true'.
