# AN OLD IMPLEMENTATION OF CART
# DO NOT USE










# DO NOT USE THIS FILE









# DO NOT USE THIS FILE










class Cart
  # To store the items, we need to create a hash that contains
  # both the item and its quantity in the cart. As the key of the
  # hash, we'll use the name. Be careful: this means that each item name
  # has to be unique!
  def initialize
    @items = {}
    # Note that @items will eventually look like:
    # { 
    #   name => {
    #     :item => Item,        # The Item
    #     :quantity => integer  # The number of that Item in the cart
    #   }
    # }
    # Meaning "A hash that maps each item name to another object with
    # two properties: the item object itself and the quantity.
  end

  # Accessors
  def items
    return @items
  end
  # Shortcut:
  # attr_reader :items

  def total_price
    total = 0
    @items.each do |name, item_obj|
      total += item_obj[:item].price * item_obj[:quantity]
    end
    # Shortcut:
    # total = @items.inject(0) { |sum, item_obj| sum + item_obj.item.price }
    return total.round(2)
  end

  def add(item)
    item_obj = @items[item.name]
    if item_obj
      item_obj[:quantity] += 1
    else
      item_obj = {
        :item => item,
        :quantity => 1
      }
    end
    @items[item.name] = item_obj
  end

  def remove(item)
    item_obj = @items[item.name]
    if item_obj && item_obj[:quantity] > 0
      item_obj[:quantity] -= 1
      @items[item.name] = item_obj
    else
      puts "Couldn't remove #{item.name}."
    end
  end
end

