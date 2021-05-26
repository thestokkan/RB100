print "Number between 1 and 100, please: "
number = gets.chomp.to_i

if number < 0
  puts "I said, between 0 and 100..."
elsif number < 51
  puts "Your number is between 0 and 50!"
elsif number < 101
  puts "Your number is between 51 and 100!"
else
  puts "Your number is above 100!"
end
