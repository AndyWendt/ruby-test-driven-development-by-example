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
      product = five.times(2)
      expect(product.amount).to eq(10)
      product = five.times(3)
      expect(product.amount).to eq(15)
    end
  end
end