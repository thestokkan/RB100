cleaning_schedule = {
  monday: "vacuum",
  tuesday: "bathroom",
  wednesday: "dusting",
  thursday: "kitchen",
  friday: "change bed"
}

puts "Cleaning days:", cleaning_schedule.keys, ""
puts "Chores:", cleaning_schedule.values, ""
puts "Cleaning schedule:"
cleaning_schedule.each { |day,chore| puts "#{day}: #{chore}" }
