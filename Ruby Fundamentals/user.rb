class User
  attr_accessor :name, :email
  def initialize(name, email)
    @name = name
    @email = email
  end
  def run
    puts "Hey #{@name} is running."
  end
  # Set and Get name definitions
  # def get_name
  #   @name
  # end
  # def set_name=(name)
  #   @name = name
  # end
end

user = User.new("Myles", "myles@example.com")
user1 = User.new("Mel", "mel@example.com")
user2 = User.new("Eric", "eric@test.com")

# puts user.get_name
# user.set_name = "John"

puts "My user's name is #{user.name} and his email is #{user.email}."
user.name = "Bob"
user.email = "bob@example.com"
puts "My user's name is now #{user.name} and the new email is #{user.email}."
