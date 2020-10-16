class Review
    @@all = []
    def initialize(customer, restaurent, rating)
        @customer = customer
        @restaurent = restaurent
        @rating = rating
        @@all << self
    end    
  
    def rating
        @rating 
    end
    
    def self.all
       @@all
    end    

    def review_customer
        reviews.select {|customer| customer.review == self}
    end    
    
    def review_restaurent
        reviews.select {|restaurent| restaurent.review == self}
    end    

end
