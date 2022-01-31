class Oystercard
attr_reader :balance
# attr_reader takes the class instance variable and applies it to all objects created.
  def initialize
    @balance = 0

  end

  def top_up(money)
    @balance += money
  end


end