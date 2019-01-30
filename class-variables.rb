class Book
  @@books_created = 0
  @pages = 0

  attr_reader(:title, :author, :pages)

  def initialize(title, author, pages)
    @title = title
    @author = author
    @pages = pages
    @@books_created += 1
  end

  def self.pages
    @pages
  end
end

book1 = Book.new('The Grapes of Wrath', 'John Steinbeck', 464)
book2 = Book.new('The Crying of Lot 49', 'Thomas Pynchon', 152)
p Book.pages # => 0
p book1.title # => "The Grapes of Wrath"
p book1.pages # => 464
p book2.title # => "The Crying of Lot 49"
p book2.pages # => 152