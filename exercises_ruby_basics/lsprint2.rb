=begin
Launch School Printer (Part 2)

In an earlier exercise, you wrote a program that prints 'Launch School is the best!' repeatedly until a certain number of lines have been printed.

Modify this program so it repeats itself after each input/print iteration, asking for a new number each time through. The program should keep running until the user enters q or Q.
=end



loop do
  print 'How many output lines do you want? Enter a number >= 3 (Q to quit): '
  input = gets.chomp
  break if %w(q Q).include?(input)
  if input.to_i >= 3
    input.to_i.times { puts 'Launch School is the best!'}
  else
    puts "That's not enough lines"
  end
end
