#
# Weather Forecast
#
# Our predict_weather method should output a message indicating whether a sunny or cloudy day lies ahead. However, the output is the same every time the method is invoked. Why? Fix the code so that it behaves as expected.

# def predict_weather
#   sunshine = ['true', 'false'].sample
#
#   if sunshine
#     puts "Today's weather will be sunny!"
#   else
#     puts "Today's weather will be cloudy!"
#   end
# end


# Answer (CORRECT): sunshine is assigned to a string literal and will therefore evaluate to true every time.
# To fix it, remove the quotation around 'true' and 'false'. Now sunshine will be assigned one of the boolean values.

def predict_weather
  sunshine = [true, false].sample

  if sunshine
    puts "Today's weather will be sunny!"
  else
    puts "Today's weather will be cloudy!"
  end
end

predict_weather
