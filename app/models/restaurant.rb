class Restaurant
    attr_reader :name
    @@all = []
    def initialize(name)
      @name = name

      @@all << self 
    end

    def self.all 
      @@all 
    end 

    def reviews
      Review.all.select do |review| 
        review.restaurant == self 
        
      end 
    end 

    def customers
      Review.all.select do |review|
        review.customer ==  self 
     
      end 
    end 
    
    def average_star_rating
      Review.all.select do |review|
        review.rating / review.rating.count 
        binding.pry 
        
      end 
    end 

    

end
