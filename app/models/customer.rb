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
    return @@all
  end

  def self.find_by_name(name) #given string of full name return first customer where full name matches 
      Customer.all.find do |customer|
        customer.full_name == name
      end
  end

  # def self.find_all_by_given_name(name)
  #     Customer.all.select do |customer|
  #       customer.given_name == name
  #     end
  # end
end
