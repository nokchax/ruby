class BookInStock
  attr_reader :isbn
  attr_accessor :price

  def initialize(isbn, price)
    @isbn = isbn
    @price = price
  end

  def price_in_cents
    Integer(price * 100 + 0.5) # 여기서 price는 reader 메서드를 말한다.
  end

  def price_in_cents=(cents)
    @price = cents / 100.0
  end
end

book = BookInStock.new("isbn1", 33.8)
puts "ISBN = #{book.isbn}"
puts "Price = #{book.price}"
puts "Price int cents = #{book.price_in_cents}"

book.price_in_cents = 1234
puts "Price = #{book.price}"
puts "Price int cents = #{book.price_in_cents}"
