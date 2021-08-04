s = 'Hello World!'
x = 42

puts "The first thing one learns to do is output '#{s}'. \
The answer is 42"

si = 'string ' + 'concatenation!'
puts si

print 'Enter name: '
name = gets.chomp
# name = "therese"

puts "Hello, #{name}!"

name.capitalize
puts name

name.upcase!
puts name

def my_method
  puts 'Hello world!'
end
