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
      five.times(2)
      expect(five.amount).to eq(10)
    end
  end
end