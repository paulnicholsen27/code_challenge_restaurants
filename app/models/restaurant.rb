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
      
      #binding.pry
      name.restaurant == self
    end
  end

end
