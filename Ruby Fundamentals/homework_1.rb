# Create a dictionary (hash) with 10 city names where the city name is the key, and the area code will be the value.
dial_book = {
  "newYork" => "212",
  "newBrunswick" => "732",
  "honolulu" => "808",
  "sanFrancisco" => "415",
  "spokane" => "509"
}

# Method just to display city names.
def display_city_names(array)
  array.each { |k, v| puts k.capitalize }
end
# Method to look up area code that will take city name and output area code.
def find_area_code(array, city)
  array[city]
end

# Loop to keep the program running and prompt the user to ask for another city code.
loop do
  puts "Do you want to look an area code up by city name? (Y/N)"
  answer = gets.chomp
  if answer != "Y"
    break
  end
  # Display the city names to the user which are available in the dictionary.
  display_city_names(dial_book)
  # Get input from user on city name.
  puts "Please enter a city name:"
  city = gets.chomp
  if dial_book.include?(city)
    puts "Looking up Area Code..."
    # Output the area code based on user input.
    area_code = find_area_code(dial_book, city)
    puts "The area code for #{city} is #{area_code}."
  else
    puts "Sorry, we don't have that city's Area Code"
  end
end
# End program
