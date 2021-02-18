a = [1, 'cat', 3.14] # 세 개의 요소를 가지는 배열을 만든다.
puts "The first element is #{a[0]}"
# 세 번째 요소 초기화하기

a[2] = nil
puts "The array is now #{a.inspect}"

a = ['ant', 'bee', 'cat', 'dog', 'elk']
a[0] # => "ant"
a[3] # => "dog"
# 다음과 같다.
a = %w{ant bee cat dog elk}
a[0] # => "ant"
a[3] # => "dog"

inst_section = {
  'cello' => 'string',
  'clarinet' => 'woodwind',
  'drum' => 'percussion',
  'oboe' => 'woodwind',
  'trumpet' => 'brass',
  'violin' => 'string'
}

# p 메서드는 puts와 비슷하지만 nil과 같은 객체도 출력한다.
p inst_section['oboe'] # "woodwind"
p inst_section['cello'] # "string"
p inst_section['bassoon'] # nil
