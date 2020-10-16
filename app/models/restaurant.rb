class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def reviews
    Review.all.select do |reviews|
      reviews.restaurant == self
     end
  end

  def customers
    
  
  end

  def average_star_rating #attempting to return array of just the rating to find average
    self.reviews.select do |reviews|
      reviews.rating
    end
  end



end
