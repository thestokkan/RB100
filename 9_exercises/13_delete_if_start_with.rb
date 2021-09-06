# Given the following array:
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
p arr

# 13. Use delete_if and start_with? to delete all words that start with "s"
arr.delete_if { |word| word.start_with?('s') }
p arr

# Recreate arra and delete words that start with 's' or 'w':
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if { |word| word.start_with?('s','w') }
p arr

