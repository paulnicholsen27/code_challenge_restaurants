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
    Review.all.select do |reviews|
      reviews.customer == self
    end
  end

  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end

  def num_reviews # attempting to iterate thru Review array and count review by given/self instance
    Review.all.count(self)
  end

  def self.find_by_name(full_name)
    self.all.find(full_name)
  end

  def self.find_all_by_given_name(name)
    Customer.all.select do |names|
      names.given_name == name
    end
  
  end


end
