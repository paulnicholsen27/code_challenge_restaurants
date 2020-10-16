class Customer
  attr_accessor :given_name, :family_name

  @@all = []

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    self.class.all << self
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def self.all
    @@all
  end 

  def reviews
    Review.all.select{|review|
      review.customer == self
    }
  end

  def restaurants
    self.reviews.map{|review|
      review.restaurant
    }
  end

  def add_review(restaurant, rating)
    if restaurant.customers.include?(self)
      return "You can not leave a review twice"
    end 
    review = Review.new(self, restaurant, rating)
  end

  def num_reviews
    self.reviews.count
  end

  def self.find_by_name(full_name)
    self.all.find{|customer|
      customer.full_name == full_name
    }
  end

  def self.find_all_by_given_name(given_name)
    self.all.select{|customer|
      customer.given_name == given_name
    }
  end 
end
