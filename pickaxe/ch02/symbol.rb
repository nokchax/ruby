def walk(direction)
  if direction == :north
    #...
  end
end

inst_section = {
  :cello => 'string',
  :clarinet => 'woodwind',
  :drum => 'percussion',
  :oboe => 'woodwind',
  :trumpet => 'brass',
  :violin -> 'string'
}

inst_section[:oboe] # => "woodwind"
inst_section[:cello] # => "string"
# 문자열과 심벌이 다르다는 점은 주의!
inst_section['cello'] # => nil

inst_section = {
  cello: 'string',
  clarinet: 'woodwind',
  drum: 'percussion',
  oboe: 'woodwind',
  trumpet: 'brass',
  violin: 'string'
}

puts "An oboe is a #{inst_section[:oboe]} instrument"
# => An oboe is a woodwind instrument
