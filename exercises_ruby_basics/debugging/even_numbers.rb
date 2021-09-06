#
# Even Numbers
#
# We want to iterate through the numbers array and return a new array containing only the even numbers. However, our code isn't producing the expected output. Why not? How can we change it to produce the expected result?
#
# numbers = [5, 2, 9, 6, 3, 1, 8]
#
# even_numbers = numbers.map do |n|
#   n if n.even?
# end
#
# p even_numbers # expected output: [2, 6, 8]
#

# Answer (CORRECT): The #map method returns an array with the return values of the block for each iteration.
# Since it returns something for every iteration, we will also get values for the odd numbers, which in this case is nil.
# We can fix the code by using #select instead of #map. #select returns the values for which the block evaluates to true. Also, we don't need the 'n if' part witin the block.

numbers = [5, 2, 9, 6, 3, 1, 8]

even_numbers = numbers.select do |n|
  n.even?
end

p even_numbers # expected output: [2, 6, 8]
