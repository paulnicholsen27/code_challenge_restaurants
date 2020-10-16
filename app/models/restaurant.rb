class Restaurant

  @@all_rest = []

  attr_reader :name

  def initialize(name)
    @name = name
    @@all_rest << self
  end

  def self.all 
    return @@all_rest
  end

  def name
    @name
  end

  def review
    Restaurant.all.select do |restaurant|
      restaurant.review == self
    end
  end

  def customers
    Retaurant.all.select.uniq do |restaurant|
      restaurant.customer == self
    end
  end

  def average_star_rating
    Review.all.select do |review|
      review.
    end
  end
## I am out of steam !!

end
