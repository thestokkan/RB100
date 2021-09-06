
# Favorite Number (Part 1)
#
# The following array contains three names and numbers. Group each name with the number following it by placing the pair in their own array. Then create a nested array containing all three groups. What does this look like? (You don't need to write any code here. Just alter the value shown so it meets the exercise requirements.)

# Answer:

[['Dave', 7], ['Miranda', 3], ['Jason', 11]]

# This looks like a hash with key-value pairs


# Favorite Number (Part 2)
#
# In the code below, a nested array containing three groups of names and numbers is assigned to favorites.
#
favorites = [['Dave', 7], ['Miranda', 3], ['Jason', 11]]
#
# Flatten and print this array. That is, the printed result should not have any subarrays, but should have all of the original strings and numbers from the original array:
#
# Expected output:
#
# ["Dave", 7, "Miranda", 3, "Jason", 11]


# Answer (CORRECT):

favorites.flatten!
p favorites
