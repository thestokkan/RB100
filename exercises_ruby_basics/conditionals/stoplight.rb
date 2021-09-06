
puts "Stoplight (Part 1)"

#In the code below, stoplight is randomly assigned as 'green', 'yellow', or 'red'.

stoplight = ['green', 'yellow', 'red'].sample

#Write a case statement that prints "Go!" if stoplight equals 'green', "Slow down!" if stoplight equals 'yellow', and "Stop!" if stoplight equals 'red'.

# Answer (CORRECT):

case stoplight
when 'green' then puts "Go!"
when 'yellow' then puts "Slow down!"
when 'red' then puts "Stop!"
end


puts "Stoplight (Part 2)"

# Convert the previous case statement to an if statement.

# Answer (correct):

puts 'Go!' if stoplight == 'green'
puts 'Slow down!' if stoplight == 'yellow'
puts 'Stop!' if stoplight == 'red'


# Solution

if stoplight == 'green'
  puts 'Go!'
elsif stoplight == 'yellow'
  puts 'Slow down!'
else
  puts 'Stop!'
end

# Comment: the case statement is best suited for comparing multiple values to the same case.



puts "Stoplight (Part 3)"

# Reformat the following case statement so that it only takes up 5 lines.

stoplight = ['green', 'yellow', 'red'].sample

case stoplight
when 'green'
  puts 'Go!'
when 'yellow'
  puts 'Slow down!'
else
  puts 'Stop!'
end

# Answer: See part one...

# Solution:
case stoplight
when 'green'  then puts 'Go!'
when 'yellow' then puts 'Slow down!'
else               puts 'Stop!'
end

# Take note that 'then' isn't used for 'else', only 'when'.
# If you have multiple statements, put them on separate lines.
