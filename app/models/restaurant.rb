class Restaurant
  attr_accessor :name

  ALL = []

  def initialize(name)
    @name = name
    ALL << self
  end

  def self.all
    ALL
  end

  def self.find_by_name(name)
    self.all.each do |rest|
      return rest.name if rest.name == name
    end
  end

  def reviews
    reviews = []
    Review.all.each do |review|
      rest = review.restaurant
      if rest.name == self.name
        reviews << review.content
      end
    end
  end

  def customers
    customers = []
    Review.all.each do |review|
      rest = review.restaurant

      if rest.name == self.name
        customers << review.customer
      end
    end

  end


end
