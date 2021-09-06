=begin
Dividing Numbers

Write a program that asks the user to enter two integers, then prints the results of dividing the first by the second. The second number must not be 0. Since this is user input, there's a good chance that the user won't enter a valid integer. Therefore, you must validate the input to be sure it is an integer. You can use the following code to determine whether the input is an integer:

def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

It returns true if the input string can be converted to an integer and back to a string without loss of information, false otherwise. It's not a perfect solution in that some inputs that are otherwise valid (such as 003) will fail, but it is sufficient for this exercise.


## My solution
Simplified PEDAC (PAC)
1. Understand the problem
  Input: two numbers, one is to be divided by the other
  Output: division of numbers
  Requirements:
    > Input numbers are valid integers (can be checed by provided code snippet)
    > second number is not 0
  Questions:
    How will the numbers be provided?
      > user input
        > one by one or at the same time? -> one by one, see examples
    What happens if only one number is provided?
      > the user is promted for numbers until two valid integers are given, see examples
    What happens if the input doesn't meet the requirements?
      > see above
    Are negative numbers allowed?
      > Yes. Integers can be negative and there is nothing in the problem text indicating that the numbers must be positive (the validation method allows negative numbers).

2. Edge cases
  > denominatior is 0 -> error message, try again
  > extremely large numbers -> let's try and see
  > input is not integer -> error message, try again

3. Data structure
  Input will be stored in separate variables
  The program will print the resulting value.

4. Algorithm
  1. Define a method that can be used to check if a valid number has been entered (copy from probem text).
  2. Prompt the user for integers to be divided, one after the other. Store input in variable after each prompt.
  3. After each input, check if it meets the requirements
    > use the previously defined method to check if the inputs are valid integers
    > check if the denominator is 0
  4. If all requirements are met, divide the first number by the second and print the result.
  5. If some requirement is not met, display an appropriate error message and prompt again.
=end

## Code
puts "Let's divide some numbers!"

def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

num_input = nil
denom_input = nil
error_msg = '>> Invalid input. Only integers are allowed.'

loop do
  print '>> Please enter the numerator: '
  num_input = gets.chomp
  break if valid_number?(num_input)
  puts error_msg
end

loop do
  print '>> Please enter the denominator: '
  denom_input = gets.chomp
  break if valid_number?(denom_input) && denom_input != "0"
  puts denom_input == "0" ? 'Invalid input. A denominator of 0 is not allowed.' : error_msg
end

div_result = num_input.to_i / denom_input.to_i
puts ">> #{num_input} / #{denom_input} is #{div_result}"
