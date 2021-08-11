
puts "Tricky Number"

## What will the following code print? Why? Don't run it until you've attempted to answer.

def tricky_number
  if true
    number = 1
  else
    2
  end
end

puts tricky_number

# Answer: 1
# 'true' always evaluates to true, so 'number = 1' will be executed.
# The executed expression returns '1', so this is what will be printed.
