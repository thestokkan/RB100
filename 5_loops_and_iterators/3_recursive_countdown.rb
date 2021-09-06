
def countdown(n)
  if n <= 0
    puts n
  else
    puts n
    n -= 1
    countdown(n)
  end
end

print "Give me a number: "
n = gets.chomp.to_i

countdown(n)
