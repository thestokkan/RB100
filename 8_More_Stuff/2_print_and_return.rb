def execute(&block)
  block
end

execute { puts "Hello from inside the execute method!" }

# => Proc object
# Nothing is printed since the block is not called using .call inside the method definition. If it was (that is, if block.call was put in the method definition), the program would return nil and print the string.
