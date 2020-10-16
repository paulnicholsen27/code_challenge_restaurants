class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def reviews
    Review.all.select{|review| review.restaurant == self}
  end

  def customers
    self.reviews.map{|review| review.customer.full_name}.uniq
  end

  def average_star_rating
    (self.reviews.map{|review| review.rating}.sum.to_f / self.reviews.length).round(3)
  end

end
