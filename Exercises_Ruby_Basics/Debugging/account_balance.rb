#
# Account Balance
#
# Time for a check of your financial situation.
#
# The output of the code below tells you that you have around $70. However, you expected your bank account to have about $238. What did we do wrong?


# Financially, you started the year with a clean slate.

balance = 0

# Here's what you earned and spent during the first three months.

january = {
  income: [ 1200, 75 ],
  expenses: [ 650, 140, 33.2, 100, 26.9, 78 ]
}

february = {
  income: [ 1200 ],
  expenses: [ 650, 140, 320, 46.7, 122.5 ]
}

march = {
  income: [ 1200, 10, 75 ],
  expenses: [ 650, 140, 350, 12, 59.9, 2.5 ]
}

# Let's see how much you've got now...

def calculate_balance(month)
  plus  = month[:income].sum
  minus = month[:expenses].sum
  plus - minus
end

[january, february, march].each do |month|
  balance = calculate_balance(month)
end

puts balance


# Answer (CORRECT): The value of balance is only the net income of March. This is because the net income of each month is not saved during the iteration, and the value of 'balance' is therefore the return value of the last iteration, which is the return value of calculate_balance(march).
# To fix it, we can update the net incomes during iteration, like beliow. Another option is to save the net income for each month in an array and then sum up the values at the end.

# Alt. 1
[january, february, march].each do |month|
  balance += calculate_balance(month)
end

puts balance

# Solution (better wording):
#w e simply re-assign balance to the return value of invoking calculate_balance with the current month's data. Instead, we want to increment balance by re-assigning it to the current value of balance plus the return value of calculate_balance.
