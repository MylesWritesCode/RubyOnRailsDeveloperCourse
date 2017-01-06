# Pretty print
require 'pp'
# Use the user.rb file closest to this file
require_relative 'user'

user = User.new 'mel@example.com', 'Mel'

pp user

user.save
