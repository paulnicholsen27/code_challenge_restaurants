class Review

    attr_reader :customer, :restaurant, :rating
    @@all = []

    #NOTE TO SELF: doesn't say one way or another, but
    #should rating be accessor so ppl can change it 
    #over time?

    def initialize(customer, restaurant, rating)
        @customer = customer
        @restaurant = restaurant
        @rating = rating #rating is an Integer
        @@all << self
    end

    def self.all
        @@all
    end

   

    
    
end
