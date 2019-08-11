require 'rspec'
include RSpec

RSpec.describe 'Money' do
  before do
    # Do nothing
  end

  after do
    # Do nothing
  end

  context 'Dollar' do
    it 'multiplies' do
      five = ::Money::Dollar.new(5)
      expect(::Money::Dollar.new(10)).to eq(five.times(2))
      expect(::Money::Dollar.new(15)).to eq(five.times(3))
    end

    it 'compares equality' do
      expect(::Money::Dollar.new(5)
                 .eq?(::Money::Dollar.new(5))).to eq(true)
      expect(::Money::Dollar.new(5)
                 .eq?(::Money::Dollar.new(6))).to eq(false)
    end
  end

  context 'Franc' do
    it 'multiplies' do
      five = ::Money::Franc.new(5)
      expect(::Money::Franc.new(10)).to eq(five.times(2))
      expect(::Money::Franc.new(15)).to eq(five.times(3))
    end
  end
end