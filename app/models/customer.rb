require 'pry'


class Customer
  attr_accessor :first_name, :last_name

  ALL = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    ALL << self
  end

  def self.all
    ALL
  end

  def self.find_by_name(name)
    first = name.split[0]
    last = name.split[1]
    self.all.each do |cust|
      if cust.first_name == first && cust.last_nane == last_nane
        return cust
      end
    end
  end

  def self.find_all_by_name(name)
    first = name.split[0]
    last = name.split[1]
    customers = []
    self.all.each do |cust|
      if cust.first_name == first && cust.last_nane == last_nane
        customers << cust
      end
    end

  end

  def add_review(restaurant, content)
    rest = Restaurant.new(restaurant)
    review = Review.new(self, rest, content)
  end

  def full_name
    "#{first_name} #{last_name}"
  end
end
