class Book
  attr_accessor :title, :author
  attr_reader :rentals

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  def add_rental(rental)
    @rentals.push(rental)
  end

  def to_h
    {
      title: @title,
      author: @author,
      rentals: @rentals.map(&:to_h)
    }
  end
end
