class Customer
  attr_accessor :given_name, :family_name
  @@all = []

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all << self
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def self.all
    @@all
  end

  def restaurants
    #Returns a **unique** array of all restaurants 
    #a customer has reviewed
    Review.all.select do |review|
      review.customer == self
    end.map do |review2|
      #binding.pry
      review2.restaurant
    end.uniq
  end
  

  def add_review(restaurant, rating)
    #given a **restaurant object** and a star rating
    #(as an integer), creates a new review and
    #associates it with that customer and restaurant
    ##CREATE NEW REVIEW
    Review.new(self, restaurant, rating)
  end

  def num_reviews
    #total number of reviews for customer
    Review.all.select do |review|
      review.customer == self
    end.count
  end

  def self.find_by_name(name)
    #given a string of a full name, return FIRST CUST
    #whose full name matches
    self.all.find do |customer|
      customer.full_name == name
    end
  end
  
  def self.find_all_by_given_name(name)
    #given a string of a given name, returns array
  #given a string of a given name, returns an **array** containing all customers with that given name
  #containing ALL CUST w/ given name
    self.all.select do |customer|
      customer.full_name == name
    end
  end


end
