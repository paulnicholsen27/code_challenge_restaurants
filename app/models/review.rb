class Review
    attr_reader :customer, :restaurant
    attr_accessor :rating

    @@all = []

    def initialize(customer, restaurant, rating)
        @customer = customer
        @restaurant = restaurant
        @rating = rating
        save
    end

    def self.all
        @@all
    end

    def save
        self.class.all << self
    end

    
  
end