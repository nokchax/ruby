def say_goodnight(name)
  result = "Good night " + name
  return result
end

# 잠잘 시간입니다.
puts say_goodnight("kwanghyun")
puts (say_goodnight("nokcha"))

puts "And good night \nx"

def say_goodnight2(name)
  result = "Good night #{name.capitalize}"
  return result
end

puts say_goodnight2("kwanghyun")
puts say_goodnight2('nokcha')

# 루비에서의 리턴값은 마지막으로 실행된 표현식의 결과값이다.
def say_goodnight3(name)
  "Good night #{name.capitalize}"
end

puts say_goodnight3("kwanghyun")
puts say_goodnight3('nokcha')

