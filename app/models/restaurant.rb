class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def reviews
    #returns array of all reviews for that restaurant
    Review.all.map do |review|
      review.restaurant == self
    end
  end


  def customers
    #returns a UNIQUE list of all customers who have
    #reviewed a particular restaurant
    #need all reviews for a restaurant, done above
    #.uniq
    Review.all.select do |review|
      review.restaurant == self
    end.map do |review2|
      review2.customer
    end.uniq
  end

  def all_star_rating_by_restaurant
    #this is a helper for avg star below
    Review.all.select do |review|
      #binding.pry
      review.restaurant == self
    end.map do |review2|
      review2.rating
    end
  end

  def review_count_by_rest
    all_star_rating_by_restaurant.count
  end


  def average_star_rating
    #returns avg star rating for a restaurant
    avg = all_star_rating_by_restaurant.sum.to_f
   #I know I'm not done!
    avg / review_count_by_rest
  end


end
