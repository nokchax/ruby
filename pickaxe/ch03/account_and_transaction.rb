require_relative 'account'
require_relative 'transaction'

savings = Account.new(100)
checking = Account.new(200)

puts "Saving : #{savings.balance}"
puts "Checking : #{checking.balance}"

trans = Transaction.new(checking, savings)
trans.transfer(50)

puts 'After transaction'
puts "Saving : #{savings.balance}"
puts "Checking : #{checking.balance}"
