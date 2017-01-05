puts "Hello!"
puts "Enter in your first name: "
first_name = gets.chomp
puts "Enter your last name: "
last_name = gets.chomp
full_name = first_name + " " + last_name
puts "Welcome, #{first_name} #{last_name}!"

name_len = first_name.length + last_name.length
puts "Your name is #{name_len} characters long."

name_rev = first_name.reverse + " " + last_name.reverse
puts "Your name is #{name_rev} in reverse."
