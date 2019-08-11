module Money
  class Money
    def initialize(amount)
      @amount = amount
    end

    def ==(money)
      @amount === money.amount
    end
  end

  class Dollar < Money
    attr_reader :amount

    def times(multiplier)
      Dollar.new(@amount * multiplier)
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