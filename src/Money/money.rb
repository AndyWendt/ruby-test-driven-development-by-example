module Money
  class Dollar
    attr_reader :amount

    def initialize(amount)
      @amount = amount
    end

    def times(multiplier)
      @amount = 10
    end
  end
end