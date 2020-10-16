class Restaurant
  attr_reader :name

  @@all_restaurants = []

  def initialize(name)
    @name = name
    @@all_restaurants << self
  end

  def self.all
    @@all_restaurants
  end 

  def reviews
    Review.all.select do |review|
      review.restaurant == self 
    end 
  end 

  def customers
    self.reviews.map do |review|
      review.customer
    end 
  end 

  def average_star_rating
    self.reviews.map(&:rating).sum / self.reviews.count
  end 

  


end
