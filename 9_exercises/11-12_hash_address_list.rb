# 11. Given the following data structures:
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

# ...copy information from array into empty hash that applies to the correct person:

contacts["Joe Smith"] = {email: contact_data[0][0],
                         address: contact_data[0][1],
                         phone: contact_data[0][2]}
contacts["Sally Johnson"] = {email: contact_data[1][0],
                             address: contact_data[1][1],
                             phone: contact_data[1][2]}

p contacts

# 12 Access data
puts ""
print "Joe's email: "
puts contacts["Joe Smith"][:email]

print "Sally's phone number: "
puts contacts["Sally Johnson"][:phone]
