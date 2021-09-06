puts 'What is your age in years?'
age = gets.chomp.to_i
puts "You are #{age * 12} months old."

# I could have saved the age in moths to its own variable.
# If I don't convert the input to integer, it will just print the string 12 times.
