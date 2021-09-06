# Original array:
a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']
p a

a = a.map { |s| s.split }
a.flatten!
p a
