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
    x = Review.all.map do |value|
      value.customer == self
      value.restaurant
    end
    x.uniq
    #Returns a **unique** array of all restaurants a customer has reviewed
  end

  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end

  def self.find_by_name(name)
    Customer.all.find do |value|
      value == name
    end
  end

  def self.find_by_given_name(name)
    Customer.all.find do |value|
      value.given_name == name.given_name
    end
  end

end
