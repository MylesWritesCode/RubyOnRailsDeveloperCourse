def arithmetic(x, y, method)
  if (method == "*")
    return x * y
  elsif (method == "/")
    return x / y
  elsif (method == "+")
    return x + y
  elsif (method == "-")
    return x - y
  elsif (method == "%")
    return x % y
  end
end

puts "Please enter a number for x: "
x = gets.chomp.to_f
puts "Please enter a number for y: "
y = gets.chomp.to_f
puts "X times Y is #{arithmetic(x, y, '*')}"
puts "X divided by Y is #{arithmetic(x, y, '/')}"
puts "X plus Y is #{arithmetic(x, y, '+')}"
puts "X minus Y is #{arithmetic(x, y, '-')}"
puts "The remainder of X divided by Y is #{arithmetic(x, y, '%')}"
