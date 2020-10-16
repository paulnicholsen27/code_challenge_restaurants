class Customer
  attr_accessor :given_name, :family_name

  @@all = []

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name = family_name
    @@all << self
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def restaurants
    Review.all.select { |review| review.customer == self }.map { |review| review.restaurant }
  end

  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end

  def num_reviews
    Review.all.select { |review| review.customer == self }.count
  end

  def self.all
    @@all
  end

  def self.find_by_name(full_name)
    Customer.all.find { |customer| customer.full_name == full_name }
  end

  def self.find_all_by_given_name(given_name)
    Customer.all.select { |customer| customer.given_name.include?(given_name) }
  end
end
