
# 3. Ignoring Case
#
# Using the following code, compare the value of 'name' with the string 'RoGeR' while ignoring the case of both strings. Print true if the values are the same; print false if they aren't. Then, perform the same case-insensitive comparison, except compare the value of name with the string 'DAVE' instead of 'RoGeR'.
#
name = 'Roger'
#
# Expected output:
#
# true
# false

# Answer (correct, apart from the redundant ternary statement...)
puts name.casecmp('RoGeR') == 0 ? true : false
puts name.casecmp('DAVE') == 0 ? true : false


# Solution
puts name.casecmp('RoGeR') == 0
puts name.casecmp('DAVE') == 0
