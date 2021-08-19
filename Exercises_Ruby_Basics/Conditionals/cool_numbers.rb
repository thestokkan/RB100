
puts "Cool Numbers"

# In the code below, number is randomly assigned a number between 0 and 9. Then, an if statement is used to print "5 is a cool number!" or "Other numbers are cool too!" based on the value of number.

# number = rand(10)
#
# if number = 5
#   puts '5 is a cool number!'
# else
#   puts 'Other numbers are cool too!'
# end

# Currently, "5 is a cool number!" is being printed every time the program is run. Fix the code so that "Other numbers are cool too!" gets a chance to be executed.


# Answer (CORRECT):
# Need to change 'number = 5' so it's a comparison, not an assignment.
# The assignment will always evaluate to 'true'.
number = rand(10)

if number == 5
  puts '5 is a cool number!'
else
  puts 'Other numbers are cool too!'
end
