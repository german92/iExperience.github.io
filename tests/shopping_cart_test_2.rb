module Color
  # shamelessly stolen (and modified) from redgreen
  COLORS = {
    :clear   => 0,  :black   => 30, :red   => 31,
    :green   => 32, :yellow  => 33, :blue  => 34,
    :magenta => 35, :cyan    => 36,
  }
  module_function

  COLORS.each do |color, value|
    module_eval "def #{color}(string); colorize(string, #{value}); end"
    module_function color
  end

  def colorize(string, color_value)
    "\e[#{color_value}m" + string + "\e[#{COLORS[:clear]}m"
  end
end

def pass(msg)
  puts "    " + Color.green(msg)
end

def fail(msg)
  puts Color.red msg
  exit
end

def assert(condition, s_msg, f_msg)
  if condition
    pass s_msg
  else
    fail f_msg
  end
end

require_relative 'item'
require_relative 'shopper'

puts Color.blue "Tests for Shopper"

begin
  shopper = Shopper.new "Bru"
  pass "Create works with one parameter"
rescue
  fail "Create fails"
end

begin
  shopper = Shopper.new
  fail "Create work with no parameters"
rescue
  pass "Create fails with no parameters"
end

begin
  shopper.first_name
  shopper.last_name
  shopper.money
  shopper.cart
  shopper.full_name
  pass "Accessors working"
rescue
  fail "Some accessors failing"
end

assert (shopper.money == 100), "Defaults to 100 money",
  "Doesn't default to 100 money"

assert (shopper.full_name == "Bru"), "Full name works with no last name",
  "full name fails with no last name"

begin
  shopper = Shopper.new "Bru", :last_name => "Ski", :money => 150
  assert (shopper.money == 150 && shopper.last_name == "Ski"),
    "Optional parameters work",
    "Optional parameters fail"
  assert (shopper.full_name == "Bru Ski"), "Full name works with last name",
    "Full name fails with last name"
rescue
  fail "Using optional parameters breaks program"
end

milk = Item.new("milk", 10)
eggs = Item.new("eggs", 50)

begin
  shopper.add_to_cart(milk)
  shopper.add_to_cart(eggs)
  test = (shopper.cart.total_price == 60)
  assert test, "add_to_cart works", "add_to_cart fails"
rescue
  fail "add_to_cart breaks"
end

begin
  shopper.remove_from_cart(eggs)
  test = (shopper.cart.total_price == 10)
  assert test, "remove_from_cart works", "remove_from_cart fails"
rescue
  fail "remove_from_cart breaks"
end

begin
  shopper.checkout
  test = (shopper.money == 140 && shopper.cart.total_price == 0)
  assert test, "checkout works when enough money",
    "checkout fails when enough money"
rescue
  fail "checkout breaks when enough money"
end

3.times { shopper.add_to_cart(eggs) }

begin
  shopper.checkout
  test = (shopper.money == 140 && shopper.cart.total_price == 150)
  assert test, "checkout fails when not enough money",
    "checkout works even if not enough money"
rescue
  fail "checkout breaks when not enough money"
end

puts Color.blue "Tests for SuperShopper"

super_shopper = SuperShopper.new "Bru2"

begin
  assert (super_shopper.money == 100), "Defaults to 100 at start",
    "Doesn't default to 100 at start"
  super_shopper.get_money
  assert (super_shopper.money == 200), "get_money works with default amount",
    "get_money fails with default amount"
rescue
  fail "get_money breaks with default amount"
end

begin
  super_shopper.get_money(50)
  assert (super_shopper.money == 250), "get_money works with input",
    "get_money fails with input"
rescue
  fail "get_money breaks with input"
end

3.times { super_shopper.add_to_cart(eggs) }

begin
  super_shopper.checkout
  assert (super_shopper.money == 115), "checkout works", "checkout fails"
rescue
  fail "checkout breaks"
end
puts
puts Color.blue("Congratulations, all tests passed!")
puts
