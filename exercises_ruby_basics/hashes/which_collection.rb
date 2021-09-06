#
# Which Collection?
#
# Rewrite car as a nested array containing the same key-value pairs.
#
# car = {
#   type:  'sedan',
#   color: 'blue',
#   year:  2003
# }

# Answer (CORRECT):

car = [
  [:type,  'sedan'],
  [:color, 'blue'],
  [:year,  2003]
]

p car
