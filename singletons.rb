class Animal
  attr_reader :type

  def initialize(type)
    @type = type
  end
end

spot = Animal.new("dog")
p spot.type

# singleton method
def spot.bark
  p "woof"
end

spot.bark

# singleton (nameless) class
class << spot
  def bark_louder
    p "bowowow"
  end
end

spot.bark_louder