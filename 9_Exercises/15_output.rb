# What will the following code output?
hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end

# " These hashes are the same!"
# The hashes have exactly the same key:value pairs, but in different order. Since the Hash structure is unordered, this renders them equal.
