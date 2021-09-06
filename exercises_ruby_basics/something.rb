# Print Something (part 1)
# Write a program that asks the user whether they want the program to print "something", then print it if the user enters y. Otherwise, print nothing.

# puts 'Do you want me to print something (y/n)?'
# input = gets.chomp.downcase
#
# puts 'something' if input == 'y'


# Print Something (part 2)
# Modify your program so it prints an error message for any inputs that aren't y or n, and then asks you to try again. Keep asking for a response until you receive a valid y or n response. In addition, your program should allow both Y and N (uppercase) responses; case sensitive input is generally a poor user interface choice. Whenever possible, accept both uppercase and lowercase inputs.


input = ''
until input == 'y' || input == 'n'
  puts 'Do you want me to print something (y/n)?'
  input = gets.chomp.downcase
  puts 'Invalid input' if input != 'y' && input != 'n'
  puts 'something' if input == 'y'
end

# LS solution
choice = nil
loop do
  puts '>> Do you want me to print something? (y/n)'
  choice = gets.chomp.downcase
  break if %w(y n).include?(choice)
  puts '>> Invalid input! Please enter y or n'
end
puts 'something' if choice == 'y'

# Comments:
# - use a plain loop to solicit inputs until we have a valid input, then exit that loop.
# - start by setting choice to nil; this guarantees that choice will be available both inside the loop and after the loop has finished running.
# - After the loop finishes, we perform the requested action
