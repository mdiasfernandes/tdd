require './_tdd/calc.rb'

describe Calc do
  context 'sum funcs' do
    it 'sum 2' do
      calc = Calc.new
      result = calc.sum(10, 10)
      expect(result).to eq(20)
    end
  end
end