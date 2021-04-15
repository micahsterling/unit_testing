require 'rspec'

class ChangeMachine
  def change(amount) 
    wallet = []
    
    wallet << amount 
    return wallet
  end
end


RSpec.describe ChangeMachine do
  describe '#change' do
    it 'should return [1] when given 1' do
      machine = ChangeMachine.new
      expect(machine.change(6)).to eq([5,1])
    end
  end
end