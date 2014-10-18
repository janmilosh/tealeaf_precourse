puts 'exercise 1'

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

array.each do |value|
  puts value
end

puts 'exercise 2'

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

array.each do |value|
  if value > 5
    puts value
  end
end

puts 'exercise 3'

new_array = array.select do |num|
  num % 2 != 0
end
p new_array

puts 'exercise 4'

array.push(11)
p array

array.unshift(0)
p array

puts 'exercise 5'

array.delete(11)
array.push(3)
p array

puts 'exercise 6'

new_array = array.uniq
p new_array

puts 'exercise 7'
puts 'A hash contains both keys and values.'

puts 'exercise 8'
my_hash_1 = {:first_name => 'Jan', :last_name => 'Milosh'}
my_hash_2 = {first_name: 'Jan', last_name: 'Milosh'}

puts 'exercise 9'

h = {a:1, b:2, c:3, d:4}
puts h[:b]

h[:e] = 5
puts h

h.delete_if { |key, value| value < 3.5}
puts h

# puts 'exercise 12'

# contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
#             ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

# contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

# counter = 0
# contacts.each do |key, value|
#   contacts[key] = contact_data[counter]
#   counter += 1
# end

# contacts["Joe Smith"][:email] = contact_data[0][0]
# contacts["Joe Smith"][:address] = contact_data[0][1]
# contacts["Joe Smith"][:phone] = contact_data[0][2]
# contacts["Sally Johnson"][:email] = contact_data[1][0]
# contacts["Sally Johnson"][:address] = contact_data[1][1]
# contacts["Sally Johnson"][:phone] = contact_data[1][2]
# p contacts

# puts 'exercise 13'

# puts contacts['Joe Smith'][:email]
# puts contacts['Sally Johnson'][:phone]

puts 'exercise 14'

contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
fields = [:email, :address, :phone]

contacts.each do |name, hash|
  fields.each do |field|
    hash[field] = contact_data.shift
  end
end

p contacts

puts 'exercise 15'

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if {|word| word.start_with?('s')}

p arr

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if {|word| word.start_with?('s', 'w')}

p arr


puts 'exercise 16'

a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

p a

a.map! {|item| item.split(' ')}
a.flatten!

p a

hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end
