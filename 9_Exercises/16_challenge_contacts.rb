# Original data:
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

# Copy data fom Array into Hash (assumes persons are in the same order as in Hash)
i = 0 # Set counter for person
for (person,info) in contacts
  j = 0 # (re)set counter for details
  for details in [:email, :address, :phone]
    contacts[person][details] = contact_data[i][j]
    j += 1
  end
  i += 1
end

p contacts

# Comment: I stepped right into the for loop trap, as this is what I'm used to from Matlab, R, and shell scripting. I'm leaving the code as is, but I'll be practicin using Ruby's built-in iterators and remember to use these instead.

# Book's solution (a tad more elegant):

fields = [:email, :address, :phone]

contacts.each_with_index do |(name, hash), idx|
  fields.each do |field|
    hash[field] = contact_data[idx].shift
  end
end
