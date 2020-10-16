require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
 puts "customer class tests"
tristian = Customer.new("Tristian", "Whipple")
akram = Customer.new("Akram", "Alam")
irena = Customer.new("Irena", "Wise")
puts irena.given_name == "Irena"
puts akram.given_name == "Akram"
puts akram.family_name  == "Alam"
akram.given_name = ("Karma")
akram.family_name = ("Mala")
puts akram.given_name == "Karma"
puts akram.family_name == "Mala"
puts "full name. first name then last name"
puts akram.full_name 
puts "restaurant class tests"
bonefish = Restaurant.new("BoneFish Grill")
redrobin = Restaurant.new("Red Robin")
friday = Restaurant.new("Fridays")
puts bonefish.name
puts redrobin.name 
puts friday.name  
puts Restaurant.all  
puts "review class Tests"
review1 = Review.new(akram, bonefish, 5)
review2 = Review.new(irena, redrobin, 3)
puts review1.rating == 5
puts review2.rating == 3
puts redrobin.reviews == 3
puts redrobin.customers == redrobin
puts akram.num_reviews
puts Customer.find_by_name("Irena Wise")
puts Customer.find_all_by_given_name("Irena Wise")
puts bonefish.average_star_rating


binding.pry 
0




# binding.pry
# 0 #leave this here to ensure binding.pry isn't the last line