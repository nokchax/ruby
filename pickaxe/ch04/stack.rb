stack = []
stack.push "red"
stack.push "green"
stack.push "blue"

p stack # ["red", "green", "blue"]
puts stack # red \n green \n blue

stack.pop # blue
stack.pop # green
stack.pop # red
p stack # []
