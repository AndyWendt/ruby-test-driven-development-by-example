module Money
  class Money
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
  end

  class Dollar < Money
    attr_reader :amount

    def times(multiplier)
      Money.dollar(@amount * multiplier)
    end

    def currency
      @currency
    end
  end

  class Franc < Money
    attr_reader :amount

    def times(multiplier)
      Money.franc(@amount * multiplier)
    end

    def currency
      @currency
    end
  end
end