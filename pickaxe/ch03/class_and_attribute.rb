class BookInStock
  attr_reader :isbn, :price

  def initialize(isbn, price)
    @isbn = isbn
    @price = price
  end

  # def isbn
  #   @isbn
  # end
  #
  # def price
  #   @price
  # end
end

# 루비에서는 메서드 마지막에 평가된 표현식의 결과를 반환한다.
book = BookInStock.new("isbn1", 12.34)
puts "ISBN = #{book.isbn}"
puts "Price = #{book.price}"
