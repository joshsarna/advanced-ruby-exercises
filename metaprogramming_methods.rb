class String
  define_method(:rewind) {
    newString = ""
    i = 1
    self.length.times do |l|
      newString << self[-i]
      i += 1
    end
    return newString
  }
  remove_method(:reverse)
  def method_missing(method)
    return "The method #{method} cannot be found for the String class, friend."
  end
end

p "hello".reverse # => "The method reverse cannot be found for the String class, friend."
p "hello".rewind # => "olleh"