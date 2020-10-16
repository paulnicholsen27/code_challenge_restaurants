require_relative "../config/environment.rb"

def reload
  load "config/environment.rb"
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

ray = Customer.new("Raynaldo", "S")
sharad = Customer.new("Sharad", "S")
jake = Customer.new("Jake", "S")

puts "--Initializers, Readers, and Writers--"
puts "Customer#initialize"
puts ray.given_name == "Raynaldo" && sharad.family_name == "S" && jake.given_name == "Jake"

puts "Customer#given_name"
puts ray.given_name == "Raynaldo" && jake.given_name == "Jake"

puts "Customer#family_name"
puts sharad.family_name == "S"

puts "Customer#full_name"
puts ray.full_name == "Raynaldo S" && sharad.full_name == "Sharad S" && jake.full_name == "Jake S"

puts "Customer.all"
puts Customer.all == [ray, sharad, jake]

puts ""
bk = Restaurant.new("Burger King")
mcd = Restaurant.new("McDonald's")
fiveguys = Restaurant.new("Five Guys")

puts "Restaurant#initialize"
puts bk.name == "Burger King" && mcd.name == "McDonald's"

puts "Restaurant#name"
puts fiveguys.name == "Five Guys"

puts ""
ray_bk = Review.new(ray, bk, 5)
ray_mcd = Review.new(ray, mcd, 5)
ray_fiveguys = Review.new(ray, fiveguys, 5)

puts "Review#initialize"
puts ray_bk.customer == ray && ray_bk.restaurant == bk && ray_bk.rating == 5

puts "Review#rating"
puts ray_bk.rating == 5

puts "Review.all"
puts Review.all.count == 3


puts ""
puts "--Object Relationship Methods--"
puts "Review#customer"
puts ray_bk.customer == ray

puts "Review#restaurant"
puts ray_bk.restaurant == bk

puts ""
puts "Restaurant#reviews"
puts bk.reviews == [ray_bk]

puts "Restaurant#customers"
puts bk.customers == [ray]

puts ""
puts "Customer#restaurants"
puts ray.restaurants == [bk, mcd, fiveguys]

puts "Customer#add_review(restaurant, rating)"
sharad.add_review(bk, 4)
sharad.add_review(mcd, 4)
sharad.add_review(fiveguys, 4)
puts Review.all.count == 6


puts ""
puts "--Aggregate and Association Methods--"
puts "Customer#num_reviews"
puts ray.num_reviews == 15

puts "Customer.find_by_name(name)"
puts Customer.find_by_name("Jake S") == jake && Customer.find_by_name("Sharad S") == sharad

jake2 = Customer.new("Jake2", "S")
puts "Customer.find_all_by_given_name(name)"
puts Customer.find_all_by_given_name("Jake") == [jake, jake2]

puts ""
puts "Restaurant#average_star_rating"
jake.add_review(bk, 3)
puts bk.average_star_rating == 4

# binding.pry
0 #leave this here to ensure binding.pry isn't the last line
