class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def reviews
    Review.all.select{|review|
      review.restaurant == self
    }
  end

  def customers
    self.reviews.map{|review|
      review.customer
    }
  end 

  def average_star_rating
    average_rating = 0
    self.reviews.each{|review|
      average_rating += review.rating
    }
  average_rating.to_f / self.reviews.count.to_f
  end 

end
