class Customer
  attr_accessor :given_name, :family_name
@@all = []
  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all << self
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def self.all
    @@all
  end

  def restaurants
    Review.all.find_all do |person|
      #binding.pry
      person.customer == self
    end
  end

  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)  
  end

  def num_reviews
    Review.all.select do |rw|
      rw.customer == self
    end.count
  end

  def self.find_by_name(name)
    @@all.find do |fn_string|
    #binding.pry
      fn_string.full_name == name
    end
  end

  def self.find_all_by_given_name(name)
    Customer.all.select do |name_string|
      #binding.pry
      name_string.given_name == name
    end
  end
end
