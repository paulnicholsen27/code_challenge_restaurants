require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

sals = Restaurant.new("Sal's")
mcds = Restaurant.new("McDs")
puts sals.name == "Sal's"

jake = Customer.new("Jake", "Short")
jake2 = Customer.new("Jake", "Eviltwin")
kyle = Customer.new("Kyle", "McElroy")
puts jake.given_name == "Jake"
puts jake.family_name == "Short"
puts jake.full_name == "Jake Short"
puts "Customer.all includes all customers."
puts Customer.all.include?(jake) && Customer.all.include?(kyle)

visit = Review.new(jake, sals, 10)
visit2 = Review.new(jake, sals, 8)
visit1 = Review.new(kyle, sals, 8)
visitmcd = Review.new(jake, mcds, 5)
mcds2 = jake.add_review(mcds, 4)

puts "Review.rating"
puts visit.rating == 10
puts visit.customer == jake 
puts "Review.all"
puts Review.all.include? visit && visit1 && visit2 && visitmcd && mcds2

puts "Review.customer & Review.restaurant"
puts visit.customer == jake && visit.restaurant == sals

puts "Restaurant.reviews"
puts sals.reviews.include? visit && visit1

puts "Restaurant.customers"
puts sals.customers.include? jake && kyle 
puts mcds.customers.include? jake 
puts mcds.customers.include? kyle

puts "jake has 4 reviews"
puts jake.num_reviews

puts "Customer can find customer"
puts (Customer.find_by_name "Kyle McElroy") == kyle

puts "find all by given name"
puts Customer.find_all_by_given_name("Jake").include? jake && jake2

puts "Restaurant rating"
puts sals.average_star_rating == 8.67


# binding.pry
0 #leave this here to ensure binding.pry isn't the last line