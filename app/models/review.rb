class Review
 
    @@all_reviews = []

    attr_reader :customer, :restaurant

    def initialize(customer, restaurant, rating)
        @customer = customer
        @restaurant = restaurant
        @rating = rating
        @@all_reviews << self

    end

    def rating
        @rating
    end

    def self.all
        return @@all_reviews
    end

    def customer
        return @customer
        biinding.pry                    
    end


end