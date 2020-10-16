require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#Customer
daphne = Customer.new("Daphne", "Jean")
velma = Customer.new("Velma", "Rogers")
fred = Customer.new("Fred", "Sanders")
shaggy = Customer.new("Shaggy", "Randalls")
scooby = Customer.new("Scooby", "Randalls")
shaggy2 = Customer.new("Shaggy", "Mars")
puts "Customer knows their first name"
puts daphne.given_name == "Daphne"
puts "Customer knows their given name"
puts daphne.family_name == "Jean"
#Restaurant
chik_fil_a = Restaurant.new("Chik-Fil-A")
green_turtle = Restaurant.new("The Green Turtle")
eggspectation = Restaurant.new("Eggspectation")

puts "Restaurant knows its name"
puts chik_fil_a.name == "Chik-Fil-A"

#Review
review_1 = Review.new(fred,chik_fil_a, 5)
review_2 = Review.new(shaggy, green_turtle, 3)
review_3 = Review.new(shaggy,chik_fil_a, 4)
review_4 = Review.new(scooby,green_turtle, 5)
review_5 = Review.new(shaggy,chik_fil_a, 5)
review_6 = Review.new(daphne,eggspectation, 4)
review_7 = Review.new(velma, eggspectation, 2)

puts "Review knows its customer"
puts review_1.customer == fred

puts "Review knows its restaurant"
puts review_2.restaurant == green_turtle

puts "Review knows its rating"
puts review_1.rating == 5
# :customer, :restaurant, :rating

 binding.pry
0 #leave this here to ensure binding.pry isn't the last line