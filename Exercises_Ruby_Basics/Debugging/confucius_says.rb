#
# Confucius Says
#
# You want to have a small script delivering motivational quotes, but with the following code you run into a very common error message: no implicit conversion of nil into String (TypeError). What is the problem and how can you fix it?
#
# def get_quote(person)
#   if person == 'Yoda'
#     'Do. Or do not. There is no try.'
#   end
#
#   if person == 'Confucius'
#     'I hear and I forget. I see and I remember. I do and I understand.'
#   end
#
#   if person == 'Einstein'
#     'Do not worry about your difficulties in Mathematics. I can assure you mine are still greater.'
#   end
# end
#
# puts 'Confucius says:'
# puts '"' + get_quote('Confucius') + '"'
#


# Answer (CORRECT): The method returns the value of the last expression evaluated, which in this case is the last if statement.
# Since the statement does not evaluate to true unless 'Einstein' is passed as an argument, it will return nil, as will the method.
# Since the return value of the method is nil, which cannot be used in string concatenation, an error is raised when the last line is evaluated.
# This can be fixed by assigning each string to a variable and then implicitly or explicitly return this at the end of the method definition. Another option is to use the explicit 'return' statement in front of each string.

# Alt. 1
def get_quote(person)
  if person == 'Yoda'
    q = 'Do. Or do not. There is no try.'
  end

  if person == 'Confucius'
    q = 'I hear and I forget. I see and I remember. I do and I understand.'
  end

  if person == 'Einstein'
    q = 'Do not worry about your difficulties in Mathematics. I can assure you mine are still greater.'
  end
  q
end

puts 'Confucius says:'
p puts '"' + get_quote('Confucius') + '"'

# Alt. 2

def get_quote(person)
  if person == 'Yoda'
    return 'Do. Or do not. There is no try.'
  end

  if person == 'Confucius'
    return 'I hear and I forget. I see and I remember. I do and I understand.'
  end

  if person == 'Einstein'
    return 'Do not worry about your difficulties in Mathematics. I can assure you mine are still greater.'
  end
end

puts 'Confucius says:'
p puts '"' + get_quote('Confucius') + '"'


# Solution: My alternative 2, or using if/elsif instead of multiple if statements. 
