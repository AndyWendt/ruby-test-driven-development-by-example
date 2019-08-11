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
      five = ::Money::Dollar.new(5)
      expect(::Money::Dollar.new(10)).to eq(five.times(2))
      expect(::Money::Dollar.new(15)).to eq(five.times(3))

      five = ::Money::Franc.new(5)
      expect(::Money::Franc.new(10)).to eq(five.times(2))
      expect(::Money::Franc.new(15)).to eq(five.times(3))
    end

    it 'compares equality' do
      expect(::Money::Dollar.new(5)).to eq(::Money::Dollar.new(5))
      expect(::Money::Dollar.new(5)).not_to eq(::Money::Dollar.new(6))
      expect(::Money::Franc.new(5)).to eq(::Money::Franc.new(5))
      expect(::Money::Franc.new(5)).not_to eq(::Money::Franc.new(6))
    end
  end
end