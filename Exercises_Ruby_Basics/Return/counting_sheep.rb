
puts 'Counting Sheep (Part 1)'
#
# What will the following code print? Why? Don't run it until you've attempted to answer.

def count_sheep
  5.times do |sheep|
    puts sheep
  end
end

puts count_sheep

# Answer: Not sure, don't remember how #times work.

# Solution:
# 0
# 1
# 2
# 3
# 4
# 5

# The Integer#times method iterates the given block int times, passing in values from 0 to int-1. It returns self.
# Here, 0-4 is printed due to the 'puts' call inside the method.
# The '5' is printed because #times returns the initial integer (the caller) and because 'puts' is called on 'count_sheep'.

puts 'Counting Sheep (Part 2)'
## What will the following code print? Why? Don't run it until you've attempted to answer.

def count_sheep
  5.times do |sheep|
    puts sheep
  end
  10
end

puts count_sheep

# Answer:
# 0
# 1
# 2
# 3
# 4
# 10
# Same as above, the 'puts' statement in the method definition will print out 0-4.
# Then, the return value is printed, which in this case is '10'. (correct)


puts 'Counting Sheep (Part 3)'

# What will the following code print? Why? Don't run it until you've attempted to answer.

def count_sheep
  5.times do |sheep|
    puts sheep
    if sheep >= 2
      return
    end
  end
end

p count_sheep

# Answer:
# 0
# 1
# 2
# nil
# The #times method will print numbers (starting at 0) until it reaches the value '2', after which 'return' is called and the loop is exited.
# The 'return' keyword returns 'nil' when no argument is passed to it, and since 'count_sheep' is called with 'p', 'nil' is printed last. (CORRECT)
