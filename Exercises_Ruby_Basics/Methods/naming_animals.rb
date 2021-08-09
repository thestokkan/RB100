=begin

Naming Animals

Run the code as it is shown below, and take notice of any error messages.

def dog
  return name
end

def cat(name)
  return name
end

puts "The dog's name is #{dog('Spot')}."
puts "The cat's name is #{cat}."

Based on what the error messages are telling you, update the relevant method definitions and method invocations as necessary so that the names are printed as shown below.

Expected output:

The dog's name is Spot.
The cat's name is Ginger.

=end


=begin
ERROR MESSAGE 1:

Traceback (most recent call last):
	1: from naming_animals.rb:34:in `<main>'
naming_animals.rb:26:in `dog': wrong number of arguments (given 1, expected 0) (ArgumentError)

ERROR MESSAGE 2:
Traceback (most recent call last):
	1: from naming_animals.rb:45:in `<main>'
naming_animals.rb:40:in `cat': wrong number of arguments (given 0, expected 1) (ArgumentError)

=end

def dog(name) # 1. Give the metod definition a parameter
  return name
end

def cat(name)
  return name
end

puts "The dog's name is #{dog('Spot')}."
puts "The cat's name is #{cat('Ginger')}." # 2. Give the method call an argument
