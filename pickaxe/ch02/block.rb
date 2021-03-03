# 코드블록
{ puts "Hello" }

# 이것 역시 코드블록
do
  club.enroll(person)
  person.socialize
end

greet { puts "Hi" }
verbose_greet("Dave", "loyal customer") { puts "Hi" }

# 메서드는 yield 문을 이용해 결합된 코드 블록을 여러 차례 실행할 수 있다.
def call_block
  puts "Start of method"
  yield
  yield
  puts "End of method"
end

call_block { puts "In the block" }
# 실행결과
# Start of method
# In the block
# In the block
# End of method

# yeild 문에 인자를 적으면 코드 블록에 이 값이 매개 변수로 전달된다
def who_says_what
  yield("Dave", "hello")
  yield("Andy", "goodbye")
end

who_says_what {|person, phrase| puts "#{person} says #{phrase}"}
# 실행결과
# Dave says hello
# Andy says goodbye

# 코드블록을 반복자 구현에 사용하기도 한다.
animals = %w( ant bee cat dog )
animals.each {|animal| puts animal }
# 실행결과
# ant
# bee
# cat
# dog

# C나 Java에서 기본으로 지원하는 반복문은 루비에서 단순히 메서드 호출일 뿐이다.
[ 'cat', 'dog', 'horse'].each {|name| print name, " "}
5.times { print "*" }
3.upto(6) {|i| print i }
('a'..'e').each {|char| print char }
# 실행결과
cat dog horse *****3456adcde
