require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

george_washington = Customer.new("George", "Washington")
abe_lincoln = Customer.new("Abe", "Lincoln")
britney_spears = Customer.new("Britney", "Spears")
britney_snow = Customer.new("Britney", "Snow")
lady_gaga = Customer.new("Lady", "Gaga")
elton_john = Customer.new("Elton", "John")


puts "Customer knows it's given name?"
puts george_washington.given_name == ("George")

puts "Customer knows it's family name?"
puts abe_lincoln.family_name == ("Lincoln")

puts "Customer knows it's full name?"
puts lady_gaga.full_name == ("Lady Gaga")

puts "Knows all of it's customers?"
puts Customer.all.include?(britney_spears)

tabard_inn = Restaurant.new("Tabard Inn")
pf_changs = Restaurant.new("PF Changs")
divyas_kitchen = Restaurant.new("Divya's Kitchen")
k_pauls = Restaurant.new("K Pauls")

puts "Restaurant knows it's name?"
puts tabard_inn.name == ("Tabard Inn")

review1 = Review.new(lady_gaga, k_pauls, 4.5)
review2 = Review.new(abe_lincoln, divyas_kitchen, 5)
review3 = Review.new(elton_john, pf_changs, 3.9)
review4 = Review.new(george_washington, k_pauls, 4.8)

puts "Review know's it's customer?"
puts review1.customer.full_name == ("Lady Gaga")
puts "Review know's it's restaurant?"
puts review2.restaurant.name == ("Divya's Kitchen")
puts "Review know's it's rating?"
puts review3.rating == (3.9)

puts "Review knows all of it's reviews?"
puts Review.all.include?(review3)

puts "Restaurant knows all of it's reviews?"
puts k_pauls.reviews.include?(review1)

puts "can return the first customer that matches given full name?"
puts Customer.find_by_name("Lady Gaga") == lady_gaga

# puts "can return an array of all customers with a particular given name?"
# Customer.find_all_by_given_name("Britney Spears")
# puts Customer.find_all_by_given_name.include?(britney_snow) 

binding.pry
0 #leave this here to ensure binding.pry isn't the last line