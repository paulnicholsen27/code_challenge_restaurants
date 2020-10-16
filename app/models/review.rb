class Review

@@all_reviews = []

def initialize(customer,restaurant,rating)
    @customer = customer
    @restaurant = restaurant
    @rating = rating 
    @@all_reviews << self 
end 

def customer
    @customer
end 

def restaurant
    @restaurant
end 

def rating 
    @rating
end 

def self.all
    @@all_reviews
end 








end