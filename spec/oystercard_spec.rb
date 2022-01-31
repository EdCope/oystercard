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


    # In order touse public transport 
# As a customer
# I want money on my card
end