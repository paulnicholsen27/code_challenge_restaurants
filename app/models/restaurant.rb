class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def reviews
    Review.all.select { |review| review.restaurant == self }
  end

  def customers
    reviews.map { |customer| customer.customer }.uniq
  end

  def average_star_rating
    reviews.sum { |review| review.rating }.to_f / reviews.count
  end
end
