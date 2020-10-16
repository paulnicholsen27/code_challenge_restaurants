require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

scott = Customer.new("Scott", "Lee")
jake = Customer.new("Jake", "Smith")
john = Customer.new("John", "Anderson")

rest1 = Restaurant.new("Tio Pepes")
rest2 = Restaurant.new("McDonalds")

review1 = Review.new(scott, rest1, 10)
review2 = Review.new(jake, rest1, 5)


puts Customer.all == [scott, jake, john]
puts Review.all == [review1, review2]
puts Restaurant.all == [rest1, rest2]

puts scott.given_name == "Scott"
puts scott.family_name == "Lee"
puts scott.full_name == "Scott Lee"

puts rest1.name == "Tio Pepes"
puts review1.rating == 10


# puts customer.review1 == scott


# binding.pry
0 #leave this here to ensure binding.pry isn't the last line