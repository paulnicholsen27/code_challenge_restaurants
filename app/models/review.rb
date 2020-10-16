class Review

    attr_reader :restaurant, :customer, :rating

    @@all = []

    def initialize(customer, restaurant, rating)
        @customer = customer
        @restaurant = restaurant
        @rating = rating
        self.class.all << self
    end

    def self.all
        @@all
    end
  
end