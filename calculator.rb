require 'rspec'
class Calculator
  def add(number_one, number_two)
    return number_one + number_two
  end
  def subtract(number_one, number_two)
    return number_one - number_two
  end
  def multiply(number_one, number_two)
    return number_one * number_two
  end
  def divide(dividend, divisor)
    return dividend / divisor
  end
  def sqaure(number)
    return square * square
  end
  def power(number, exponent)
    return number ** exponent
  end
end
RSpec.describe Calculator do
  describe '#add' do
    it 'should return the sum of two numbers' do
      calculator = Calculator.new
      result = calculator.add(1, 3)
      expect(result).to eq(4)
    end
    it 'should work with negative numbers' do
      calculator = Calculator.new
      result = calculator.add(-1, -3)
      expect(result).to eq(-4)
    end
    it 'should work with negitive and positve number' do
      calculator = Calculator.new
      result = calculator.add(1, -3)
      expect(result).to eq(-2)
    end
  end
  describe '#subtract' do 
    it 'should return the difference of two numbers' do
      calculator = Calculator.new 
      result = calculator.subtract(3,1)
      expect(result).to eq(2)
    end
    it 'should return the difference of two negitive numbers' do
      calculator = Calculator.new 
      result = calculator.subtract(-3,-1)
      expect(result).to eq(-2)
    end
    it 'should return the difference of two numbers' do
      calculator = Calculator.new 
      result = calculator.subtract(4,-1)
      expect(result).to eq(5)
    end
  end
  describe '#multiply' do 
    it 'should return the product of two numbers' do
      calculator = Calculator.new 
      result = calculator.multiply(4,1)
      expect(result).to eq(4)
    end
    it 'should return the product of two negitive numbers' do
      calculator = Calculator.new 
      result = calculator.multiply(-4,-1)
      expect(result).to eq(4)
    end
    it 'should return the product of two numbers' do
      calculator = Calculator.new 
      result = calculator.multiply(-4,1)
      expect(result).to eq(-4)
    end
  end
  describe '#division' do 
    it 'should return the qutient of two numbers' do
      calculator = Calculator.new 
      result = calculator.divide(4,2)
      expect(result).to eq(2)
    end
  end
end