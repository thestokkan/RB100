#
# Warriors and Wizards
#
# We started writing an RPG game, but we already run into an error message. Find the problem and fix it.

# Each player starts with the same basic stats.

player = { strength: 10, dexterity: 10, charisma: 10, stamina: 10 }

# Then the player picks a character class and gets an upgrade accordingly.

character_classes = {
  warrior: { strength:  20 },
  thief:   { dexterity: 20 },
  scout:   { stamina:   20 },
  mage:    { charisma:  20 }
}

# puts 'Please type your class (warrior, thief, scout, mage):'
# input = gets.chomp.downcase
#
# player.merge(character_classes[input])
#
# puts 'Your character stats:'
# puts player

# Answer (CORRECT):
# Error message: warriors_and_wizards.rb:22:in `merge': no implicit conversion of nil into Hash (TypeError)
# 1. The input is a string while the keys are symbols.
# => No error message, but the player hash is not updated
# Looked up Hash#merge, and it is not a mutating method. Change to Hash#merge!
# => That did the final trick!

puts 'Please type your class (warrior, thief, scout, mage):'
input = gets.chomp.downcase.to_sym

player.merge!(character_classes[input])

puts 'Your character stats:'
puts player
