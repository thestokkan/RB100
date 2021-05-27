arr = Array(1..10)

# 1.
puts "Print each value of array:"
arr.each { |a| puts a }

# 2.
puts "Values greater than 5:"
arr.each { |a| puts a if a > 5 }

# 3.
puts "Array with odd values:"
odd = arr.select { |a| a % 2 != 0 }
p odd

# 4.
puts "Append 11 and prepend 0:"
arr.append(11).prepend(0)
p arr

# 5.
puts "Remove 11 and append 3:"
arr.append(3).delete(11)
p arr

# 6.
puts "Get rid of duplicates:"
arr.uniq!
p arr

