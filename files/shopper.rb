require_relative 'cart.rb'

class Shopper
  def initialize(first_name, options={})
    @first_name = first_name
    @last_name = options[:last_name] || ""
    @money = options[:money] || 100
    @cart = Cart.new
  end

  attr_reader :first_name, :last_name, :money, :cart

  def full_name
    "#{@first_name} #{@last_name}".strip
  end

  def add_to_cart(item)
    @cart.add(item)
  end

  def remove_from_cart(item)
    @cart.remove(item)
  end

  def checkout
    if @cart.total_price <= @money
      @money -= @cart.total_price
      @cart = Cart.new
    else
      puts "Not enough money!"
    end
  end
end

class SuperShopper < Shopper
  def get_money(amount=100)
    @money += amount
  end

  def checkout
    adjusted_price = @cart.total_price*0.9
    if adjusted_price <= @money
      @money -= adjusted_price
      @cart = Cart.new
    else
      puts "Not enough money!"
    end
  end
end
