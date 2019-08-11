module Money
  class Money
    attr_reader :amount

    def initialize(amount, currency)
      @amount = amount
      @currency = currency
    end

    def ==(money)
      @amount === money.amount && money.currency === @currency
    end

    def self.dollar(amount)
      Dollar.new(amount, 'USD')
    end

    def self.franc(amount)
      Franc.new(amount, 'CHF')
    end

    def currency
      @currency
    end
  end

  class Dollar < Money
    def times(multiplier)
      Money.new(@amount * multiplier, currency)
    end
  end

  class Franc < Money
    def times(multiplier)
      Money.new(@amount * multiplier, currency)
    end
  end
end