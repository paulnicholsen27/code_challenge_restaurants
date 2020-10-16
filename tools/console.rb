require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

anne = Customer.new("Anne","Nardolilli")
annes_scary_clone = Customer.new("Anne","Nardolilli")
juan = Customer.new("Juan","Vargas")
louisa = Customer.new("Louisa","Hall")
maggie = Customer.new("Maggie","Leeker")

bloomin_onion = Restaurant.new("Outback Steakhouse")
unlimited_breadsticks = Restaurant.new("Olive Garden")
random_peanuts = Restaurant.new("Five Guys")
the_best_thai = Restaurant.new("Ghin Na Rhee")

review1 = Review.new(anne,bloomin_onion,10)
review2 = Review.new(juan,unlimited_breadsticks,4)
review3 = Review.new(louisa,random_peanuts,2)
review4 = Review.new(juan,bloomin_onion,9)
review5 = Review.new(louisa,unlimited_breadsticks,8)
review6 = Review.new(maggie,the_best_thai,10)
review7 = Review.new(annes_scary_clone,the_best_thai,10)

#pp random_peanuts.name = "McDonalds" should not work 
#puts louisa.full_name
# louisa.given_name = "Barbara"
#louisa.family_name = "Johnson"
#puts louisa.family_name
#pp Customer.all

#pp Review.all
#pp Restaurant.all
#pp review3.customer = anne    should not work 
#pp review4.restaurant = random_peanuts    should not work 

#pp random_peanuts.reviews
#pp unlimited_breadsticks.customers

#anne.add_review(unlimited_breadsticks,9)
#pp Review.all

#pp anne.num_reviews
#pp juan.restaurants

#pp unlimited_breadsticks.average_star_rating

#pp Customer.all
#pp Customer.find_by_name("Anne Nardolilli")
#pp Customer.find_all_by_given_name("Louisa")

# Final test checks 

# <!-- - `Customer#initialize`
#   - Customer should be initialized with a given name and family name, both strings 
#(i.e., first and last name, like George Washington)" -->



# <!-- - `Customer#given_name`
#   - returns the customer's given name 
#- should be able to change after the customer is created -->

# pp maggie.given_name
# pp maggie.given_name = "Becky"
# pp maggie.given_name 



# <!-- - `Customer#family_name`
#   - returns the customer's family name
#   - should be able to change after the customer is created -->


# pp maggie.family_name
# pp maggie.family_name = "Loser"
# pp maggie.family_name 
# pp maggie 

# <!-- - `Customer#full_name`
#   - returns the full name of the customer, with the given name and the family name concatenated, Western style. -->

#pp maggie.full_name

# <!-- - `Customer.all`
#   - returns **all** of the customer instances -->

#pp Customer.all 

# #### Restaurant

# <!-- - `Restaurant#initialize`
#   - Restaurants should be initialized with a name, as a string -->

# <!-- - `Restaurant#name`
#   - returns the restaurant's name
#   - should not be able to change after the restaurant is created -->

# pp bloomin_onion.name 
# bloomin_onion.name = "Outback Snakehouse" =
# pp bloomin_onion.name -- cannot change name 

# #### Review

# <!-- - `Review#initialize`
#   - Reviews should be initialized with a customer, restaurant, and a rating (a number)

# - `Review#rating`
#   - returns the rating for a restaurant.

#pp review3.rating 

# - `Review.all`
#   - returns all of the reviews -->

#pp Review.all

# ### Object Relationship Methods

# #### Review

# <!-- - `Review#customer`
#   - returns the customer object for that review
#   - Once a review is created, should not be able to change the customer -->

# pp review3.customer
# review3.customer = anne -- does not work 
# pp review3

# <!-- - `Review#restaurant`
#   - returns the restaurant object for that given review
#   - Once a review is created, should not be able to change the restaurant -->

#pp review4.restaurant

# #### Restaurant
# <!-- 
# - `Restaurant#reviews`
#   - returns an array of all reviews for that restaurant -->

#pp the_best_thai.reviews

# <!-- - `Restaurant#customers`
#   - Returns a **unique** list of all customers who have reviewed a particular restaurant. -->

#pp the_best_thai.customers

# #### Customer

# <!-- - `Customer#restaurants`
#   - Returns a **unique** array of all restaurants a customer has reviewed -->

#pp maggie.restaurants
#pp anne.restaurants 

# <!-- - `Customer#add_review(restaurant, rating)`
#   - given a **restaurant object** and a star rating (as an integer), 
#creates a new review and associates it with that customer and restaurant. -->

#anne.add_review(random_peanuts,3)
#pp Review.all

# ### Aggregate and Association Methods

# #### Customer

# <!-- - `Customer#num_reviews`
#   - Returns the total number of reviews that a customer has authored -->

#pp anne.num_reviews
#pp annes_scary_clone.num_reviews
#pp louisa.num_reviews

# <!-- - `Customer.find_by_name(name)`
#   - given a string of a **full name**, returns the **first customer** whose full name matches -->

#pp Customer.all 
#pp Customer.find_by_name("Anne Nardolilli")

# <!-- - `Customer.find_all_by_given_name(name)`
#   - given a string of a given name, returns an **array** containing all customers with that given name -->

#pp Customer.find_all_by_given_name("Anne")

# #### Restaurant

# <!-- - `Restaurant#average_star_rating`
#   - returns the average star rating for a restaurant based on its reviews
#   - Reminder: you can calculate the average by adding up all the ratings and dividing by the number of ratings -->







# # Insert code here to run before hitting the binding.pry
# # This is a convenient place to define variables and/or set up new object instances,
# # so they will be available to test and play around with in your console

# #binding.pry
# 0 #leave this here to ensure binding.pry isn't the last line