# 중괄호 대신 end 키워드를 사용한다.
today = Time.now

if today.saturday?
  puts "Do chores around the house"
elsif today.sunday?
  puts "Relax"
else
  puts "Go to work"
end

# while 문도 end 키워드를 사용한다.
num_pallets = 0
weight = 0

while weight < 100 and num_pallets <= 5
  pallet = next_pallet()
  weight += pallet.weight
  num_pallets += 1
end

# 루비에서는 대부분의 문법에서 값을 반환하므로, 다음과 같이 조건절에 문법을 사용해도 된다.
while line = gets # gets는 파일의 마지막의 경우 nil을 리턴 (nil은 false)
  puts line.downcase
end

# statement modifier(구문 변경자)
# if나 while 문 안의 내용이 한줄일 경우 줄여 쓸 수 있는 방법
if radiation > 3000
  puts "Danger, Will Robinson"
end

# 위와 같은 의미
puts "Danger, Will Robinson" if radiation > 3000

# while도 마찬가지다
square = 4
while square < 1000
  square = square * square
end

square = square * square while square < 1000
