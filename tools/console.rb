require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

puts "2 customers, dave & kevin"
dave = Customer.new("Dave", "Wilbur")
kevin = Customer.new("Kevin", "Scheuring")
dave2 = Customer.new("Dave", "Wilbur")

taco = Restaurant.new("Taco Bell")
pizza = Restaurant.new("Pizza Hut")

rev1 = Review.new(kevin, taco, 0)
rev2 = Review.new(dave, pizza, 0)
rev3 = Review.new(kevin, pizza, 10)
rev4 = Review.new(dave, taco, 10)
rev5 = Review.new(kevin, taco, 5)
rev6 = Review.new(dave, pizza, 5)
rev7 = Review.new(dave, pizza, 7)
rev8 = Review.new(dave, pizza, 7)
rev9 = Review.new(dave, pizza, 6)
rev10 = Review.new(dave, pizza, 8)



binding.pry
0 #leave this here to ensure binding.pry isn't the last line