require 'json'

class User
  attr_accessor :email, :name, :permissions
  # Using *args is a shortcut to take all arguments and create an array from them.
  def initialize(*args)
    # Which means I can pull email and name as long as I know the order they're being passed in.
    @email = args[0]
    @name = args[1]
    @permissions = User.permissions_from_template
  end

  def self.permissions_from_template
    file = File.read 'user_permissions_template.json'
    # Creates a JSON object from the file loaded above
    # Lesson showed symbolize_names: true, but I couldn't pass that argument through JSON.load.
    JSON.load(file, nil)
    # It'll run without the option symbolize_names, and save.
  end

  def save
    # Use .to_json to convert object to json file
    save_json = {email: @email, name: @name, permisssions: @permissions}.to_json
    # Argument 'a' means append
    open('users.json', 'a') do |file|
      file.puts save_json
    end
  end
end
