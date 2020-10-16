class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
 
  end

  def reviews                   ##return array of all reviews for restauant 
    Review.all.select do |review|
      review.restaurant == self 
    end
  end

  # def customers                 ## return unique list of all customers who have reviews a particular resty
  #   Review.all.select do |review|
  #     review.restaurant == restaurant
  #   end.map do |rev| ## know I want to return an array of the customers, couldn't quite figure out why .map wasn't working, perhaps needs to be returning " ____".customers
  #     customer
  #   end
  # end
end
