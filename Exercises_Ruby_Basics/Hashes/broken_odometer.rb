#
# Broken Odometer
#
# Using the following code, delete the key :mileage and its associated value from car.
#
car = {
  type:    'sedan',
  color:   'blue',
  mileage: 80_000,
  year:    2003
}

# Answer (CORRECT):

car.delete(:mileage)
p car
