require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
john = Customer.new("Johnny", "Silverhand")
goodbowl = Restaurant.new("Good Bowl")
sarah = Customer.new("Sarah", "Goodman")
chicken = Restaurant.new("Chicken Spot")
anthony = Customer.new("Anthony", "Anderson")
greek = Restaurant.new("Greek God")

john.add_review(goodbowl, 10)
sarah.add_review(goodbowl, 10)
anthony.add_review(chicken, 8)




new_review = Review.new(john, goodbowl, 10)
binding.pry
0 #leave this here to ensure binding.pry isn't the last line