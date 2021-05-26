def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

# => nil
# prints: Hello from inside the execute method!
