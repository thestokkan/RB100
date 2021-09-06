# User Name and Password

# In the previous exercise, you wrote a program to solicit a password. In this exercise, you should modify the program so it also requires a user name. The program should solicit both the user name and the password, then validate both, and issue a generic error message if one or both are incorrect; the error message should not tell the user which item is incorrect.

User_name = 'thestokkan'
Password = '12345'

loop do
  print 'Please enter user name: '
  name_input = gets.chomp
  print 'Please enter your password: '
  password_input = gets.chomp
  break if name_input == User_name && password_input == Password
  puts 'Invalid user name or password!'
end

puts "Welcome, #{User_name}!"
