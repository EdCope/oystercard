require_relative '../lib/oystercard.rb'

describe Oystercard do
  describe '#balence' do 
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
  end

end