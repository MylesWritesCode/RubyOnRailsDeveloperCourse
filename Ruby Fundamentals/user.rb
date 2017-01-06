# By convention, try to name your modules with the suffix -able
module Destructable
  def destroy(obj)
    puts "I will destroy this object."
  end
end

# Class
class User
  # You need to add modules to the class in order to use them.
  include Destructable
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

  # This is a class method.
  def self.identify_yourself
    puts "Hey I'm a class method."
  end
end

class Buyer < User

end

class Seller < User

end

class Admin <  User

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

buyer1 = Buyer.new("John Doe", "johndoe@example.com")
seller1 = Seller.new("Sell Phone", "sellphone@example.com")
admin1 = Admin.new("Add Ministrator", "admin@example.com")

user.destroy(buyer1)
