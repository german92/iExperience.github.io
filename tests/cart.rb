# An implementation for the Cart class for iXperience exercises.
# By Rafi / June 1, 2014

class Cart
  # To store the items, we need to create an array. When a cart is
  # created, the array will start empty. Note that the constructor
  # takes no variables!
  def initialize
    @items = []
  end

  # Accessors
  def items
    return @items
  end
  # Shortcut:
  # attr_reader :items

  def total_price
    total = 0
    @items.each do |item|
      total += item.price
    end
    # Shortcut:
    # total = @items.inject(0) { |sum, item| sum + item.price }
    return total.round(2)
  end

  def add(item)
    @items.push item
  end

  def remove(item)
    @items.delete item
  end
end

