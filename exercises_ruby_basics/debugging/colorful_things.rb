#
# Colorful Things
#
# The following code throws an error. Find out what is wrong and think about how you would fix it.

colors = ['red', 'yellow', 'purple', 'green', 'dark blue', 'turquoise', 'silver', 'black']
things = ['pen', 'mouse pad', 'coffee mug', 'sofa', 'surf board', 'training mat', 'notebook']

colors.shuffle!
things.shuffle!

# i = 0
# loop do
#   break if i > colors.length
#   puts i
#
#   if i == 0
#     puts 'I have a ' + colors[i] + ' ' + things[i] + '.'
#   else
#     puts 'And a ' + colors[i] + ' ' + things[i] + '.'
#   end
#
#   i += 1
# end

# Answer (CORRECT):
# The 'colors' array has one element more than the 'things' array. Since the code loops colors.length times, things will run out of elements before the loop is done. An error will therefore be raised during the last iteration of the loop when i = 7, as things[7] does not exist (out of bounds).
# One way to fix this is to break if i > things.length (below), another is to add another element to things
# Ah, forgot one thing! Since the index starts at 0, the loop must break when i > things.length - 1.

i = 0
loop do
  break if i > things.length - 1

  if i == 0
    puts 'I have a ' + colors[i] + ' ' + things[i] + '.'
  else
    puts 'And a ' + colors[i] + ' ' + things[i] + '.'
  end

  i += 1
end


# Further exploration
#
# We might change our arrays in the future and we might not always know which of them is shorter, so picking the shorter one by hand is not the best solution. How can you change the break condition, such that the loop always stops once we hit the end of the shorter array?

colors = ['red', 'yellow', 'purple', 'green', 'dark blue']
things = ['pen', 'mouse pad', 'coffee mug', 'sofa', 'surf board', 'training mat', 'notebook']

colors.shuffle!
things.shuffle!

i = 0
loop do
  if things.length < colors.length
    shorter_array = things
  else
    shorter_array = colors
  end

  break if i > shorter_array.length - 1

  if i == 0
    puts 'I have a ' + colors[i] + ' ' + things[i] + '.'
  else
    puts 'And a ' + colors[i] + ' ' + things[i] + '.'
  end

  i += 1
end
