require 'rspec'
include RSpec

RSpec.describe 'Money' do
  before do
    # Do nothing
  end

  after do
    # Do nothing
  end

  context 'Money' do
    it 'multiplies' do
      five = ::Money::Money.dollar(5)
      expect(::Money::Money.dollar(10)).to eq(five.times(2))
      expect(::Money::Money.dollar(15)).to eq(five.times(3))

      five = ::Money::Money.franc(5)
      expect(::Money::Money.franc(10)).to eq(five.times(2))
      expect(::Money::Money.franc(15)).to eq(five.times(3))
    end

    it 'compares equality' do
      expect(::Money::Money.dollar(5)).to eq(::Money::Money.dollar(5))
      expect(::Money::Money.dollar(5)).not_to eq(::Money::Money.dollar(6))
      expect(::Money::Money.franc(5)).to eq(::Money::Money.franc(5))
      expect(::Money::Money.franc(5)).not_to eq(::Money::Money.franc(6))
      expect(::Money::Money.franc(5)).not_to eq(::Money::Dollar.new(5))
    end
  end
end