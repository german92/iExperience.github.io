# Hashes

### New data structure - the dictionary
### Mapping keys to values

---

# Creating a Hash
### Phone Book

```ruby

>> numbers = {'Salman' => 123456789, 'Aaron' => 567890934}
=> {'Salman' => 123456789, 'Aaron' => 567890934}

>> numbers['Salman']
=> 123456789

>> numbers['Aaron']
=> 567890934

```

---

## A hash (dictionary) maps a set of *keys* to *values*

---
# Accessing Keys & Values in a Hash

```ruby
>> numbers = {'Salman' => 123456789, 'Aaron' => 567890934}
=> {'Salman' => 123456789, 'Aaron' => 567890934}

>> numbers.keys
=> ['Salman', 'Aaron']

>> numbers.values
=> [123456789, 567890934]

```

---

# Modifying a Hash
### Phone Book

```ruby

>> numbers = {'Salman' => 123456789, 'Aaron' => 567890934}
=> {'Salman' => 123456789, 'Aaron' => 567890934}

>> numbers['Rafi'] = 892381232
=> 892381232

>> numbers
=> {'Salman' => 123456789, 'Aaron' => 567890934, 'Rafi' => 892381232}
```

---

# Accessing Elements in a Hash

```ruby
>> numbers = {'Salman' => 123456789, 'Aaron' => 567890934}

>> numbers['Nonexistent']
=> nil

>> numbers.has_key?('Salman')
=> true

>> numbers.keys
=> ['Salman', 'Aaron']

>> numbers.values
=> [123456789, 567890934]
```

---

# Side Note: Accessing Array Elements
### Same Syntax, but using Index

```ruby

>> fruits = ["Apple", "Banana", "Pear"]
=> ["Apple", "Banana", "Pear"]

>> fruits[0]
=> "Apple"

>> fruits[2]
=> "Pear"
```

---

### How do we print all the items in a hash?
### Loops!

---

# Iterating over a Hash
### Similar to Iterating over an Array

```ruby
numbers = [1,2,3]
numbers.each do |number|
	puts number
end

phone_numbers = {'Salman' => 123456789, 'Aaron' => 567890934}
phone_numbers.each do |name, number|
	puts number
end
```

---

## In almost all cases, we don't actually use Strings as Keys
## Instead, we use Symbols

---

## Symbols are a simple data type in Ruby that uses less
## memory than Strings. We use them as keys for Hashes primarily,
## but you will see other use cases as well.

---

# New Type: Symbols
## Used as Keys for a Hash

```ruby
>> :hello
=> :hello

>> health_info = {:age => 30, :weight => 150}
=> {:age => 30, :weight => 150}

>> health_info[:age]
=> 30

>> health_info[:weight] = 200
=> 200

```

---

## Symbols are typically composed of lowercase letters and underscores.

---

# Using Hashes as Optional Parameters in Methods

```ruby

def print_info(name, age, email)
	puts "Your name is: #{name}"
	puts "Your age is: #{age}"
	puts "Your email is: #{email}"
end

print_info("Salman", 29, "salman@iexperience.co.za")
# Your name is Salman
# Your age is 29
# Your email is salman@iexperience.co.za

```

---

## What happens if we don't pass all arguments?
## e.g. Imagine if email was optional.

---
# Email is Optional?

```ruby
print_info("Salman", 29, "salman@iexperience.co.za")
# Your name is Salman
# Your age is 29
# Your email is salman@iexperience.co.za

print_info("Salman", 29)
# ArgumentError: wrong number of arguments (2 for 3)

```

---

# Options Hash to the rescue!
# In Ruby, we use an 'options hash' to specify optional arguments to methods

---

```ruby

# Using an options hash parameter with a default value of empty hash
def print_info(name, age, options={})
	puts "Your name is: #{name}"
	puts "Your age is: #{age}"

	if options[:email]
		puts "Your email is: #{email}"
	end
end

print_info("Salman", 29)
# Your name is Salman
# Your age is 29

print_info("Salman", 29, :email => "salman@iexperience.co.za")
# Your name is Salman
# Your age is 29
# Your email is salman@iexperience.co.za

```

---

# Hashes are extremely powerful dictionaries that are used to store data,
# as well as pass data around as convenient forms of method arguments.

---

# Resources

* Method Signatures: [http://www.sitepoint.com/method-signature-you-can-sink-your-teeth-into/](http://www.sitepoint.com/method-signature-you-can-sink-your-teeth-into/)
* More Info on Symbols: [http://www.troubleshooters.com/codecorn/ruby/symbols.htm](http://www.troubleshooters.com/codecorn/ruby/symbols.htm)


---

### HOMEWORK: 
### Look up the methods available on Hashes and Arrays in Ruby Documentation
### Play. Experiment. Learn.

---
