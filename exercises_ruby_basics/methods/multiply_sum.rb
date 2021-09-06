=begin

Multiply the Sum

Write the following methods so that each output is true.

puts add(2, 2) == 4
puts add(5, 4) == 9
puts multiply(add(2, 2), add(5, 4)) == 36

=end

def add(n1, n2)
  n1 + n2
end

def multiply(m1, m2)
  m1 * m2
end


puts add(2, 2) == 4
puts add(5, 4) == 9
puts multiply(add(2, 2), add(5, 4)) == 36
