=begin
EXERCISE: Opposites Attract

Write a program that requests two integers from the user, adds them together, and then displays the result. Furthermore, insist that one of the integers be positive, and one negative; however, the order in which the two integers are entered does not matter.

Do not check for the positive/negative requirement until both integers are entered, and start over if the requirement is not met.

You may use the following method to validate input integers:

def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

=end

=begin
MY SOLUTION
1. Understand the problem
  > Input: two non-zero integers, one negative and one positive.
  > Output: Sum of integers
  > Requirements
    > valid, non-zero integers -> check after each entry
    > one negative and one positive, order does not matter -> check after both have been entered
  > Questions
    >

2. Edge cases
  > Input is 0 or non-integer -> checked by validation method
  > Numbers have the same sign -> start over

3. Data structure
  > Input will be stored in separate variables
  > Result will be printed

4. Algorithm
  0. Define validation method
  1. Initialize input variables so they can be accessed outside loops.
  2. Prompt for a positive or negative integer
  3. Validate input, repeat prompt until input passes validation
  4. Repeat 2. and 3. for second number
  5. Check if nubers have opposite signs, repeat 2.-5. until criterion is met
  6. Add numbers and print result

5. Code
=end

# def valid_number?(number_string)
#   number_string.to_i.to_s == number_string && number_string.to_i != 0
# end
#
# number1 = nil
# number2 = nil
#
# loop do # main loop
#   loop do # first number
#     print 'Please enter a positive or negative integer: '
#     number1 = gets.chomp
#     break if valid_number?(number1)
#     puts 'Invalid input. Only non-zero integers are allowed.'
#   end
#
#   loop do # second number
#     print 'Please enter a positive or negative integer: '
#     number2 = gets.chomp
#     break if valid_number?(number2)
#     puts 'Invalid input. Only non-zero integers are allowed.'
#   end
#
#   number2 = number2.to_i
#   number1 = number1.to_i
#   break if number1 < 0 && number2 > 0 || number1 > 0 && number2 < 0
#   puts 'Sorry. One integer must be positive, one must be negative.'
#   puts 'Please start over.'
# end
#
# result = number1 + number2
# puts "#{number1} + #{number2} = #{result}"


# REFACTORED after seeing LS solution
# > Since both inputs must pass the same criteria, its tidier to create a method to read the numbers
# > Use 'return' instead of 'break' to break out of loop and at the same time convert the input to integer (clever!)
# > Utilize mathematical relationships in conditions when possible

def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

def read_number
  loop do
    print 'Please enter a positive or negative integer: '
    number = gets.chomp
    return number.to_i if valid_number?(number) # This is good!
    puts 'Invalid input. Only non-zero integers are allowed.'
  end
end

number1 = nil
number2 = nil

loop do
  number1 = read_number
  number2 = read_number
  break if number1 * number2 < 0 # Duh...
  puts 'Sorry. One integer must be positive, one must be negative.'
  puts 'Please start over.'
end

result = number1 + number2
puts "#{number1} + #{number2} = #{result}"
