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
