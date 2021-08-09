=begin

Make and Model

Using the following code, write a method called car that takes two arguments and prints a string containing the values of both arguments.

car('Toyota', 'Corolla')

Expected output:

Toyota Corolla

=end

def car(make, model)
  puts make + ' ' + model
end

car('Toyota', 'Corolla')


=begin
Further Exploration

Remove the #puts call from the car method. Modify your program so it still prints the result.

How do the return values of car differ with and without the #puts?

=end

def car(make, model)
  make + ' ' + model
end

puts car('Toyota', 'Avensis')

# With #puts, the car method returns nil. Without #puts, it returns the string.
