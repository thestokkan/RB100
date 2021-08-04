PRODUCTS = [
  { name: 'Thinkpad x210', price: 220 },
  { name: 'Thinkpad x220', price: 250 },
  { name: 'Thinkpad x250', price: 979 },
  { name: 'Thinkpad x230', price: 300 },
  { name: 'Thinkpad x230', price: 330 },
  { name: 'Thinkpad x230', price: 350 },
  { name: 'Thinkpad x240', price: 700 },
  { name: 'Macbook Leopard', price: 300 },
  { name: 'Macbook Air', price: 700 },
  { name: 'Macbook Pro', price: 600 },
  { name: 'Macbook', price: 1449 },
  { name: 'Dell Latitude', price: 200 },
  { name: 'Dell Latitude', price: 650 },
  { name: 'Dell Inspiron', price: 300 },
  { name: 'Dell Inspiron', price: 450 }
]

# p PRODUCTS

q1 = {
  price_min: 240,
  price_max: 280,
  q: 'thinkpad'
}

# p query

q2 = {
  price_min: 300,
  price_max: 450,
  q: 'dell'
}

# p query2

def search(query)
  filtered = []
  PRODUCTS.each do |p|
    filtered << p if p[:name].downcase.include?(query[:q]) && p[:price].between?(query[:price_min], query[:price_max])
  end
  filtered == [] ? 'No match' : filtered
end

puts 'query:'
puts search(q1)

puts 'query2:'
puts search(q2)
