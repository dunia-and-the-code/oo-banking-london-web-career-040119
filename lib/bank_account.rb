require 'pry'

class BankAccount

  attr_reader :bank_account, :name
  attr_accessor :balance, :status

  @@all = []

  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
    @@all << self
  end

  def self.all
    @@all
  end

  def deposit(amount)
    self.balance += amount
  end

  def display_balance
    "Your balance is $#{self.balance}."
  end

  def valid?
    if @balance > 0 && @status === "open"
      return true
    elsif @balance > 0 && @status === "closed"
      return false
     else
       return false
    end
    binding.pry
  end

  def close_account
    if self.valid? == true
      @status = "open"
    else
      @status = "closed"
    end
  end

end

