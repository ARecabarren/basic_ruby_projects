class Account
    attr_reader :name, :balance
    def initialize(name, balance = 100)
        @name = name
        @balance = balance
    end

    def display_balance(pin_number)
        pin_number == pin ? (puts "Balance: $#{@balance}.") : (puts pin_error)
    end

    def withdraw(pin_number,amount)
        pin_number == pin ? (puts "Withdrew #{amount}. New balance: $#{@balance}.") : (puts pin_error)
    end

    def deposit(amount)
        @balance += amount
        puts "Balance: $#{@balance}."
    end

    private
    def pin
        @pin = 1234
    end

    def pin_error
        return "Access denied: incorrect PIN."
    end
end

checking_account = Account.new('Alvaro',1300)
checking_account.deposit(1003)