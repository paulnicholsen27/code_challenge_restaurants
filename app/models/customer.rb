class Customer
  attr_accessor :given_name, :family_name

  @@all_customers = []

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all_customers << self
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def self.all
    @@all_customers
  end 

  def all_reviews
    Review.all.select do |review|
      review.customer == self 
    end 
  end 

  def restaurants
    self.all_reviews.map do |review|
      review.restaurant
    end  
  end 

  def add_review(restaurant, rating)
    Review.new(self,restaurant,rating)
  end 

  def num_reviews
    self.all_reviews.count
  end 

  def self.find_by_name(name)
    Customer.all.find do |names|
      names.full_name == name 
    end 
  end 

  def self.find_all_by_given_name(name)
    Customer.all.select do |names|
      names.given_name == name 
    end 
  end 
# - `Customer.find_all_by_given_name(name)`
#   - given a string of a given name, returns an **array** containing all customers with that given name




  #array.map(&:cash).sum











end 



