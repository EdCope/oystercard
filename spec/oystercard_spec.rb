require_relative '../lib/oystercard.rb'

describe Oystercard do
  describe '#balance' do 
    it "Respond to the method balance" do 
      expect(subject).to respond_to(:balance)
    end  
    it "Should have a balance of 0" do
      expect(subject.balance).to eq(0) 
    end
  end

  describe '#top_up' do
    it{ is_expected. to respond_to(:top_up).with(1).argument}
    it "should add money to the card" do
      expect{subject.top_up(2)}.to change(subject, :balance).by 2
    end
    it "should not exceed the maximum amount" do
      max = Oystercard::MAX_VALUE
      subject.top_up(max)
      expect{ subject.top_up(1) }.to raise_error "Card limit #{max} exceeded"
    end
  end

  describe '#deduct' do
  it "shoud deduct money from the card" do 
    subject.top_up(20)
    expect{subject.deduct(2)}.to change(subject, :balance).by -2
    end 
  end

  context 'touching in process/out process' do
    it "at the start when not on a journey" do 
      expect(subject).not_to be_in_journey
    end
    it "shows in journey when user touches in" do
      subject.touch_in 
      expect(subject).to be_in_journey
    end
  end
   
end
