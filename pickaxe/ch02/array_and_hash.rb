# array 초기화
a = [1, 'cat', 3.14] # 세 개의 요소를 가지는 배열을 만든다.
puts "The first element is #{a[0]}"

# 세 번째 요소 초기화하기
a[2] = nil
puts "The array is now #{a.inspect}"

# %w를 이용한 문자열 배열 초기화
a = ['ant', 'bee', 'cat', 'dog', 'elk']
a[0] # => "ant"
a[3] # => "dog"
# 다음과 같다.
a = %w{ant bee cat dog elk}
a[0] # => "ant"
a[3] # => "dog"

# hash 초기화
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

# 기본값 변경하기
histogram = Hash.new(0) # 기본값은 0이다.
histogram['ruby'] # => 0
histogram['ruby'] = histogram['ruby'] + 1
histogram['ruby'] # => 1
