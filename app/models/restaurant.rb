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
    review = review.all
    restaurent_review = reviews.select{|review| review.restaurent == self}

  end 
  
  def customers
    self.reviews.map{|reviews| reviews.customer}
  end
  
  def average_star_rating
    review = review.all
    x = reviews.select{|restaurent| restaurent.review == self }
    @average_rating = x.sum(0.0)/ x.size
  end  
  

end