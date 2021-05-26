input = ""
while input != "STOP"
  print "Hi, there! What's your name? "
  name = gets.chomp
  puts "Nice to meet you, #{name}!"
  print "Want to try that again (type 'stop' if not)? "
  input = gets.chomp.upcase
end
