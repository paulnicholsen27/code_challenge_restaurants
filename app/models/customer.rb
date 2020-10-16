class Customer

    @@all_cust = []

  attr_accessor :given_name, :family_name

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all_cust << self
  end

  def self.all 
    return @@all_cust
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def given_name
    @given_name
  end

  def family_name
    @family_name
  end

  def restaurants
    Review.all.select.uniq do |review|
      review.restaurants == self
    end
      binding.pry

  end

  def add_review
    Review.new(customer, restaurant, rating)
  end

  def num_reviews
    Review.all.selct do |review|
      review.customer.count
    end
  end

  def self.find_by_name(full_name)
    Customer.all.find do |customer|
      customer == full_name
    end
  end

  def self.find_all_by_given_name(given_name)
    Customer.all.select do |customer|
      customer == given_name
    end
  end




end
