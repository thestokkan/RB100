# Passwords

# Write a program that displays a welcome message, but only after the user enters the correct password, where the password is a string that is defined as a constant in your program. Keep asking for the password until the user enters the correct password.

Password = '12345'

loop do
  print 'Please enter your password: '
  input = gets.chomp
  break if input == Password
  puts 'Invalid password!'
end

puts 'Welcome!'

# Discussion
# - Don't need access to input outside of loop, so no need to initialize it before entering loop.
# - Should be case sensitive
# - NB! Not the right way to handle passwords! (stored as plain text, visible for shoulder surfers)
