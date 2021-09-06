#
# Reading Error Messages
#
# You come across the following code. What errors does it raise for the given examples and what exactly do the error messages mean?

def find_first_nonzero_among(numbers)
  numbers.each do |n|
    return n if n.nonzero?
  end
end

# Examples

find_first_nonzero_among(0, 0, 1, 0, 2, 0)
# Error message: wrong number of arguments (given 6, expected 1) (ArgumentError)
# Answer: The method definition has only one parameter, so the method call can accept only one argument. Here it is given 6 instead of one, and therefore raises an ArgumentError.

find_first_nonzero_among(1)
# Error message: undefined method `each' for 1:Integer (NoMethodError)
# Answer: This time the correct number of arguments is given. However, since the method calls #each on the argument, it raises a NoMethodError as there is no #each method for integers.
