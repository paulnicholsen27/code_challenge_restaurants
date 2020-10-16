class Customer
    attr_accessor :given_name, :family_name

    @@all = []

    def initialize(given_name, family_name)
      @given_name = given_name
      @family_name  = family_name

      @@all << self 
    end
    
    def self.all
      @@all 
    end 

    def full_name
     "#{given_name} #{family_name}"
    end

    def restaurants 
      Review.all.select do |review|
        review.restaurant == self 
      end 

    end 

    def add_review(restaurant, rating)
      Review.new(self, restaurant, rating)
    end 
    
    def num_reviews 
      Review.all.count(self)
      
    end 

    def self.find_by_name(name)
      self.all.find do |customer|

        customer.full_name == name 
        
      end 

      def self.find_all_by_given_name(name)
        self.all.select do |customer|
          customer.full_name == name 
         
        end 
      end 

    end 





end
