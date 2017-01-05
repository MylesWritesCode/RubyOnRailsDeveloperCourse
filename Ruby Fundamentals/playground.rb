puts "Hello!"
puts "Enter in your first name: "
first_name = gets.chomp
puts "Enter your last name: "
last_name = gets.chomp
full_name = first_name + " " + last_name
puts "Welcome, #{first_name} #{last_name}!"
puts "Your name is #{first_name.length + last_name.length} characters long."
puts "Your name spelled backwards is #{first_name.reverse + " " + last_name.reverse}."
