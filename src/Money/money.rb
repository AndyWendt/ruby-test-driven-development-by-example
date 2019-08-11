module Money
  class Dollar
    attr_reader :amount

    def initialize(amount)
      @amount = amount
    end

    def times(multiplier)
      Dollar.new(@amount * multiplier)
    end

    def ==(dollar)
      @amount === dollar.amount
    end
  end

  class Franc
    attr_reader :amount

    def initialize(amount)
      @amount = amount
    end

    def times(multiplier)
      Franc.new(@amount * multiplier)
    end

    def ==(dollar)
      @amount === dollar.amount
    end
  end
end