class Customer
  attr_accessor :given_name, :family_name

  @@all = []

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    save
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def restaurants
    Review.all.select do |review|
      review.customer == self
    end.map do |review|
      review.restaurant
    end.uniq
  end

  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end

  def num_reviews
    Review.all.select do |review|
      review.customer == self
    end.count
  end

  def self.find_by_name(name)
    Customer.all.find {|customer| customer.full_name == name}
  end

  def self.find_all_by_given_name(name)
    Customer.all.select {|customer| customer.given_name == name}
  end
end
