require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

erick = Customer.new("Erick", "Villeda")
vita = Customer.new("Vita", "Vindigini")
rico = Customer.new("Rico", "Hieght")

ocean_blue = Restaurant.new("Ocean Blue")
coastal_provisions = Restaurant.new("Coastal Provisions")
coton_and_rye = Restaurant.new("Coton and Rye")

good_review = Review.new(erick, ocean_blue, 5)
bad_review = Review.new(vita, coastal_provisions, 2)
good_review2 = Review.new(rico, coton_and_rye, 4)
bad_review2 = Review.new(erick, coastal_provisions, 1)
good_review3 = Review.new(erick, coton_and_rye, 5)
bad_review3 = Review.new(rico, ocean_blue, 3)

# binding.pry
0 #leave this here to ensure binding.pry isn't the last line




puts "REVIEW"
puts "Knows All Reviews"
pp Review.all == [good_review, bad_review, good_review2, bad_review2]
#Does Know all reviews but add_review method added a review that isnt listed above
puts "Knows Customer For Given Review"
pp good_review.customer == erick
puts "Knows Restaurant For Given Review"
pp bad_review2.restaurant == coastal_provisions
puts "Return rating for resturant"
pp good_review.rating == 5




puts " "
puts " "

puts "CUSTOMER"
puts "Knows Customers First Name"
pp erick.given_name == "Erick"
puts "knows Customers Last Name"
pp vita.family_name == "Vindigini"
puts "Knows Full Name"
pp rico.full_name == "Rico Hieght"
puts "Knows All Customers"
pp Customer.all == [erick, vita, rico]
puts "Can Make A New Review"
pp rico.add_review(ocean_blue, 3)
puts "Can Find Customer By Name"
pp Customer.find_by_name(erick) == erick
puts "Cand Find Customer By Given Name"
pp Customer.find_by_given_name(vita) == vita
puts "Returns a unique array of all restaurants a customer has reviewed"
pp erick.restaurants


puts " "
puts " "
puts " "
puts " "


puts "RESTAURANT"
puts "Knows All A Restaurants Reviews"
pp coastal_provisions.reviews == [bad_review, bad_review2]
puts "Returns Uniqe Array Of Customers who gave review"
pp coastal_provisions.customers == erick
puts "Returns Average Star Rating For A Restaurant"
pp coton_and_rye.average_star_rating