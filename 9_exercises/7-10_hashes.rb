# 7. The major difference between an Array and a Hash is that Arrays are ordered data structures where values are accessed by index, while Hashes are unordered data structures where data is stored as key-value pairs and values are accessed using the key.

#(Arrays are referenced by index, Hashes are referenced by key)

puts "8. Create Hashes..."
print "New style ({key:value}): "
hash_new_style = { movie: "Memento" }
p hash_new_style
print "Old style ({:key => value}): "
hash_old_style = { :movie => "Vaiana" }
p hash_old_style


puts ""
puts "9. Given the following Hash:"
h = {a:1, b:2, c:3, d:4 }
p h

print "9.1 Value of key ':b':"
puts h[:b]

print "9.2 Add key-value pair '{e:5}':"
h[:e] = 5
p h

print "9.3 Remove all key-value pairs whose value is less than 3.5:"
h.delete_if { |k,v| v < 3.5 }
p h

puts ""
puts "10. Yes, Hash values can be Arrays and you can have an Array of Hashes"
puts "Arrays as Hash values:"
h = { a:[1,2,3], b:["a","b","c"] }
p h

puts "Array of Hashes:"
a = [{a:1,b:2,c:3},{name: "Bob", age: "42", occupation: "nurse"}]
p a
