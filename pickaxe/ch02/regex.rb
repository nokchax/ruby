line = gets
if line =~ /Perl|Python/
  puts "Scripting language mentioned: #{line}"
end

# 치환 매서드로 문자열을 바꿀수 있다.
line = gets
newline = line.sub(/Perl/, 'Ruby') # 첫 'Perl'을 'Ruby'로 바꾼다.
newerline = newline.gsub(/Python/, 'Ruby') # 모든 'Python' 을 'Ruby'로
