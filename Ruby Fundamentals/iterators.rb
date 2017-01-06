# Array
y = (0..99).to_a.shuffle!

# Iterators
y.each { |x| puts x }

for num in y
  puts "Hi"
end

names = ["Myles", "Mel", "John", "James", "Joe"]

names.each do |x|
  puts "Hello #{x}"
end

names.each { |j| puts "Hello #{j.capitalize}" }

y.select { |k| k.odd? }

p = ["My", "name", "is", "Myles"]
puts "#{p.join(' ')}."

# Hashes
my_details = { 'name' => 'Myles', 'favcolor' => 'green' }
puts my_details['favcolor']

my_hash = { a: 1, b:2, c:3 }
puts "Print from hash"
puts my_hash
puts my_hash[:c]
puts "Add to hash"
my_hash[:d] = 7
my_hash[:name] = "Myles"
my_hash[:e] = 21
my_hash[:f] = 9
puts my_hash
puts "Delete from hash"
my_hash.delete(:name)
puts my_hash

puts "Iterate through hash"
my_hash.each { |k, v| puts "#{k} is #{v}"}

puts "Delete with .each (for all values over 3)"
my_hash.each { |k, v| my_hash.delete(k) if v > 3 }
puts my_hash

puts "Select entries where v is odd"
my_hash = my_hash.select { |k, v| v.odd? }
puts my_hash
