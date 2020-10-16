require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

###Customer

diego = Customer.new("diego", "dorigo") 
javier = Customer.new("javier", "chisaka")

tasca = Restaurant.new("la tasca")
amore = Restaurant.new("that's amore")




###Review

review1 = Review.new(diego, tasca, 5)
review2 = Review.new(javier, amore, 4)

puts "Returns a **unique** array of all restaurants a customer has reviewed"
puts javier.restaurants.include?(review2)



puts "Creates a new review and associates it with that customer and restaurant."
puts review3 = diego.add_review(amore, 4) 

puts "returns an array of all reviews for that restaurant"
puts amore.reviews.include?(review3)

puts "Returns a **unique** list of all customers who have reviewed a particular restaurant."
puts tasca.customers.include?(review1)

puts "Returns the total number of reviews that a customer has authored"
puts diego.num_reviews == 2

puts "given a string of a **full name**, returns the **first customer** whose full name matches"
puts Customer.find_by_name("javier chisaka") == javier

puts "given a string of a given name, returns an **array** containing all customers with that given name"
puts Customer.find_all_by_given_name("diego").include?(diego)

puts "****"

puts amore.sum_all_reviews == 8

puts amore.average_star_rating ==4

# puts "average star"
# puts amore.average_star_rating == 4

binding.pry
0 #leave this here to ensure binding.pry isn't the last line