class Restaurant
  attr_reader :name

  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end 
  end

  def customers
    self.reviews.map do |review|
      review.customer
    end.uniq
  end

  def average_star_rating
    ratings_result = self.reviews.map do |review|
      review.rating
    end
    ratings_result.inject{ |sum, el| sum + el}.to_f / ratings_result.size
  end 


end




