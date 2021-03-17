class Account
  attr_accessor :balance
  attr_reader :cleared_balance # 접근자 메서드 'cleared_balance'를 만든다.
  protected :cleared_balance # 접근자 메서드를 protected 메서드로 설정한다.

  def initialize(balance)
    @balance = balance
  end

  def greater_balance_than?(other)
    @cleared_balance > other.cleared_balance
  end
end
