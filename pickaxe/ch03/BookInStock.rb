class BookInStock
  def initialize(isbn, price)
    @isbn = isbn
    @price = Float(price)
  end

  def to_s
    "ISBN: #{@isbn}, price: #{@price}"
  end
end

# 인스턴스 변수는 @로 시작한다.
b1 = BookInStock.new("isbn1", 3)
b2 = BookInStock.new("isbn2", 3.14)
b3 = BookInStock.new("isbn3", 5.67)

# puts는 문자열을 출력.(내부에서 객채의 to_s를 호출하여 출력)
p b1
p b2
p b3

puts b1
puts b2
puts b2

