class Customer
  attr_accessor :given_name, :family_name

  @@all = []

    def initialize(given_name, family_name)
       @given_name = given_name
       @family_name  = family_name
       @@all << self
       @reviews = []
    end 

    def given_name(given_name)
       @given_name = given_name
    end  

    def given_name
       @given_name
    end  

    def family_name(family_name)
       @family_name = family_name
    end  

    def family_name
      @family_name
    end  

    def full_name
      "#{given_name} #{family_name}"
    end

    def self.all
      @@all
    end    

    def customer_restaurents
      self.all.select do |reviews|
        self.review == review
      end
    end  

    def customer_add_review(restaurent, rating)
      add_review = review.new(self, restaurent, rating)
    end

    def num_reviews
      self.all.select do |reviews|
      self.review.count == review.count
      end
    end  


    def self.find_by_name(name)
      self.all.find do |full_name|
      @given_name && family_name == self.given_name && self.family_name
       end
    end    

    def self.find_all_by_given_name(name)
     self.all.select do |given_name|
      self.given_name == given_name
       end  
    end


end
