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

  class Franc < Money
    attr_reader :amount

    def initialize(amount)
      @amount = amount
    end

    def times(multiplier)
      Franc.new(@amount * multiplier)
    end
  end
end