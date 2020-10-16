require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
john = Customer.new("John", "Doe")
jack = Customer.new("Jack", "The Ripper")
paul = Customer.new("Paul", "Rudd")
jack2 = Customer.new("Jack", "Johnson")

faang = Restaurant.new("Faang Thai")
chipotle = Restaurant.new("Chipotle")
dominoes = Restaurant.new("Dominoes")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line