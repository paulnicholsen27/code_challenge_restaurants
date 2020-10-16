require 'pry'
class Review
    
    @@all = []

    attr_accessor :customer, :restaurant, :rating
    
    def initialize(customer, restaurant, rating=0)
        @customer = customer
        @restaurant = restaurant
        @rating = rating
        @@all << self
    end

    def self.all
        @@all
    end
  
end