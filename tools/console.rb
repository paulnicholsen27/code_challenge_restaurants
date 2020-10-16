require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

customer1 = Customer.new( "Jessie", "James")
customer2 = Customer.new("Dalyn", "Dessaure")
customer3 = Customer.new("Cara", "Jonson")
customer4 = Customer.new("Jason", "Lewis")
customer5 = Customer.new("Melo", "Henderson")
customer6 = Customer.new("Elly", "Brookstone")

restaurant14 = Restaurant.new("Red Lobster")
restaurant23 = Restaurant.new("Austin Grill")
restaurant17 = Restaurant.new("Outback")
restaurant31 = Restaurant.new("Matchbox")

customer2.add_review(restaurant17, 4)
customer5.add_review(restaurant31, 3)
customer4.add_review(restaurant23, 5)
customer5.add_review(restaurant14, 3)











binding.pry
0 #leave this here to ensure binding.pry isn't the last line