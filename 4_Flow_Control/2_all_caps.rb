def all_caps(string)
  if string.length >= 10
    string.upcase!
  end

  return string
end

puts all_caps("hello world")
puts all_caps("hello")
puts all_caps("hi, my name is therese")
