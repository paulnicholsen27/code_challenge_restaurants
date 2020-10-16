class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end


  def reviews
    Review.all.select do |value|
      value.restaurant.name == self.name
    end
  end

  def customers
    x = Review.all.map do |value|
      value.restaurant.name == self.name
      return value.customer
    end
    x.uniq
  end


  def average_star_rating
    x = self.reviews.collect do |value|
      value.rating
  end
  end
  # returns the average star rating for a restaurant based on its reviews
  # Reminder: you can calculate the average by adding up all the ratings and dividing by the number of ratings
end
