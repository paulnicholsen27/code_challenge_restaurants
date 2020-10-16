class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def reviews
    Review.all.select do |rw|
      rw.restaurant ==self
    end
  end
  
  def customers
    Review.all.find_all do |name|
      name.restaurant == self
    end
  end

  def sum_all_reviews
    Review.all.select do |rev|
      #binding.pry
      rev.restaurant == self
    end.map do |rat|
      rat.rating
    end.reduce(:+)
  end

  def average_star_rating
    
  
    
  end

end
