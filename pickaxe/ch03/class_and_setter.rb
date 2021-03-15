class BookInStock
  attr_reader :isbn, :price
  attr_writer :price

  def initialize(isbn, price)
    @isbn = isbn
    @price = price
  end

  # def price=(new_price)
  #   @price = new_price
  # end
end

book = BookInStock.new("isbn1", 12.34)
puts "ISBN = #{book.isbn}"
puts "Price = #{book.price}"
book.price = book.price * 0.75 #할인 가격
puts "New price = #{book.price}"
