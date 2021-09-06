# The difference between 'merge' and 'merge!' is that 'merge' does not mutate (change) the caller, but 'merge!' do.

animals_say = {cow: "moo", pig: "oink", sheep: "baa"}
other_animals_say = {dog: "woof", cat: "miaow", tarantula: "..."}


puts "merge: ", animals_say.merge(other_animals_say)
puts "animals_say: ", animals_say
puts "other_animals_say: ", other_animals_say

puts ""
puts "merge!", animals_say.merge!(other_animals_say)
puts "animals_say:", animals_say
puts "other_animals_say.", other_animals_say



