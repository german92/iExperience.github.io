class Item
  # @param{string} name The item's name
  # @param{float} price The item's price
  def initialize(name, price)
    @name = name
    @price = price
  end

  # Accessor methods
  def name
    return @name
  end

  def price
    return @price
  end

  # The above methods can be shortcutted with:
  # attr_reader :name
  # attr_reader :price
end
