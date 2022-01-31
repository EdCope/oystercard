class Oystercard

MAX_VALUE = 90

attr_reader :balance
# attr_reader takes the class instance variable and applies it to all objects created.
  def initialize
    @balance = 0
    @in_use = false 
  end

  def top_up(money)
    raise "Card limit #{MAX_VALUE} exceeded" if @balance + money  > MAX_VALUE
    @balance += money
  end

  def deduct(money)
    @balance -= money
  end

  def touch_in
    @in_use = true
  end

  def touch_out
    @in_use = false
  end

  def in_journey?
    @in_use
  end

end