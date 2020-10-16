class Customer
  @@all = []
  
  attr_accessor :given_name, :family_name

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name

    @@all << self
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end

  def reviews
    Review.all.select{|review| review.customer == self}
  end

  def restaurants
    #Review.all.select{|review| review.customer == self}
    self.reviews.map{|review| review.restaurant}.uniq
  end

  def num_reviews
    self.reviews.length
  end

  def self.find_by_name(search_name)
    Customer.all.find{|customer| customer.full_name == search_name}
  end

  def self.find_all_by_given_name(search_name)
    Customer.all.select{|customer| customer.full_name == search_name}
  end

  def self.all
    @@all
  end

end
