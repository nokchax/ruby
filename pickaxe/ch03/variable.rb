person = "Tim"
puts "The object in 'person' is a #{person.class}"
puts "The object has an id of #{person.object_id}"
puts "Hi #{person}"

person1 = "Tim"
person2 = person1
person1[0] = 'J'

puts "person1 is #{person1}"
puts "person2 is #{person2}"

person3 = "Tim"
person4 = person3.dup
person3[0] = 'J'
puts "person3 is #{person3}"
puts "person4 is #{person4}"

person3 = "Tim"
person4 = person3
person3.freeze # 객체의 수정을 막는다.
# person4[0] = 'J' <- IDE에서 에러 표시 및 실행시 RuntimeError 예외 발생
