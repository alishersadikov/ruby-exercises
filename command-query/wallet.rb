require 'pry'

class Wallet
  attr_accessor :cents

  def initialize
    @cents = 0
    @coins = { 0 => 0, :penny => 1, :nickel => 5, :dime => 10, :quarter => 25, :dollar => 100 }
  end

  def <<(coin)
    @cents += @coins[coin]
  end

  def take(first, second = 0)
    if @cents >= @coins[first] + @coins[second]
      @cents = @cents - @coins[first] - @coins[second]
    else
      "insufficient funds"
    end
  end
end
