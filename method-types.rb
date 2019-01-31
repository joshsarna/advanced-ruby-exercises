module Animal
  def self.browse_petco # module method
    p "browsing petco"
  end
end

class Dog
  include Animal

  def self.adopt_a_dog # class method
    p "adopting a dog"
  end

  def bark # instance method
    p "barking"
  end
end

Animal.browse_petco # => "browsing petco"
Dog.adopt_a_dog # => "adopting a dog"
spot = Dog.new
spot.bark # => "barking"

def spot.roll_over # singleton method
  p "rolling over"
end

spot.roll_over # => "rolling over"