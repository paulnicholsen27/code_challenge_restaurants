require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

ben = Customer.new("Benjamin", "Hessel")
shaina = Customer.new("Shaina", "Kulbersh")
callie = Customer.new("Callie", "Dog")
shaina2 = Customer.new("Shaina", "Kulbersh")


nantucket = Restaurant.new("Nantucket's Reef")
reginas = Restaurant.new("Regina's Pizzeria")

                    #cust, rest, rating as Int
review1 = Review.new(ben, nantucket, 5)
review2 = Review.new(shaina, reginas, 5)
review3 = Review.new(ben, reginas, 5)
review4 = Review.new(ben, reginas, 3)

puts "restaurant can see its reviews"
pp reginas.reviews

puts "unique array of all restaurants a customer has reviewed"
pp ben.restaurants

puts "creates a new review"
pp ben.add_review(nantucket, 4)

puts "restaurant can see unique list of customers who have left a reviews"
pp reginas.customers

puts "returns total # of reviews for a customer"
puts ben.num_reviews

puts "returns first cust, matching full name"
pp Customer.find_by_name("Benjamin Hessel")

puts "returns array containing ALL cust w/ given name"
pp Customer.find_all_by_given_name("Shaina Kulbersh")


puts "helper method - shows all star ratings by restaurant"
pp reginas.all_star_rating_by_restaurant

puts "review count by restaurant"
puts reginas.review_count_by_rest

puts "returns avg star rating for a restaurant"
puts reginas.average_star_rating


#binding.pry
0 #leave this here to ensure binding.pry isn't the last line