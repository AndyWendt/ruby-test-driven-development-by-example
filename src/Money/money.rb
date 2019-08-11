module Money
  class Money
    def initialize(amount, currency)
      @amount = amount
      @currency = currency
    end

    def ==(money)
      @amount === money.amount && money.class.name === self.class.name
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
      Dollar.new(@amount * multiplier, 'USD')
    end

    def currency
      @currency
    end
  end

  class Franc < Money
    attr_reader :amount

    def times(multiplier)
      Franc.new(@amount * multiplier, 'CHF')
    end

    def currency
      @currency
    end
  end
end