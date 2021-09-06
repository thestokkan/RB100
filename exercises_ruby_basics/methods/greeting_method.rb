=begin

Greeting Through Methods (Part 1)

Write two methods, one that returns the string "Hello" and one that returns the string "World". Then print both strings using #puts, combining them into one sentence.

Expected output:

Hello World

=end

def hello
  'Hello'
end

def world
  'World'
end

puts "#{hello} #{world}"


=begin

Greeting Through Methods (Part 2)

Write a method named greet that invokes the following methods:

def hello
  'Hello'
end

def world
  'World'
end

When greet is invoked with #puts, it should output the following:

Hello World

Make sure you add a space between "Hello" and "World", however, you're not allowed to modify hello or world.

=end

def greet
  hello + ' ' + world
end

puts greet
