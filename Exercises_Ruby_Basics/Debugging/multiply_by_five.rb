#
# Multiply By Five
#
# When the user inputs 10, we expect the program to print The result is 50!, but that's not the output we see. Why not?

def multiply_by_five(n)
  n * 5
end

puts "Hello! Which number would you like to multiply by 5?"
number = gets.chomp

puts "The result is #{multiply_by_five(number)}!"

# Answer (CORRECT): #gets collects user input as a String, not an integer. Instead of returning 50, the method returns the string '10' five times: '1010101010'.
# To fix it, we can convert the input to integer using #to_i: number = gets.chomp.to_i

def multiply_by_five(n)
  n * 5
end

puts "Hello! Which number would you like to multiply by 5?"
number = gets.chomp.to_i

puts "The result is #{multiply_by_five(number)}!"
