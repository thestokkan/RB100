number = 1234
puts "number: #{number}"
puts "Thousand: #{ number / 1000 }"
puts "Hundred: #{ number % 1000 / 100 }"
puts "Ten: #{ number % 100 / 10 }"
puts "One: #{ number % 10 }"
