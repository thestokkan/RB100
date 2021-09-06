#
# Multiple Cars
#
# Create a nested hash using the following data.
#
# Car
# type 	color 	year
# sedan 	blue 	2003
#
# Truck
# type 	color 	year
# pickup 	red 	1998


# Answer (CORRECT):
vehicles = {
  car: {
    type: 'sedan',
    color: 'blue',
    year: 2003
  },
  truck: {
    type: 'pickup',
    color: 'red',
    year: 1998
  }
}

p vehicles
