def arithmetic(x, y, method)
  if (method == "multiply")
    return x * y
  elsif (method == "divide")
    return x / y
  elsif (method == "add")
    return x + y
  elsif (method == "subtract")
    return x - y
  elsif (method == "remainder")
    return x % y
  end
end

puts "Please enter a number for x: "
x = gets.chomp.to_f
puts "Please enter a number for y: "
y = gets.chomp.to_f
puts "X times Y is #{arithmetic(x, y, 'multiply')}"
puts "X divided by Y is #{arithmetic(x, y, 'divide')}"
puts "X plus Y is #{arithmetic(x, y, 'add')}"
puts "X minus Y is #{arithmetic(x, y, 'subtract')}"
puts "The remainder of X divided by Y is #{arithmetic(x, y, 'remainder')}"
