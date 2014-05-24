# Collections of Data

* So far we have seen two main data types: Strings and Integers
* Sometimes, we want to store more than just one string or integer
* It is very common for us to need to store a **list** of data
* In Ruby, the Array data structure allows you to store a list
* The list can include integers, strings, or a combination of them

---

# Arrays (a.k.a. Lists)

```ruby
>> x = [1,2,3]
=> [1,2,3]

>> y = ["Hey", "You", "Guys"]
=> ["Hey", "You", "Guys"]

>> z = [5, "days", "left"]
=> [5, "days", "left"]

>> grocery_list = ["Bananas", "Apples", "Milk", "Bread"]
=> ["Bananas", "Apples", "Milk", "Bread"]

```

---

# Accessing Specific Array Elements
### Using Array Index

```ruby

>> fruits = ["Apple", "Banana", "Pear"]
=> ["Apple", "Banana", "Pear"]

>> fruits[0]
=> "Apple"

>> fruits[2]
=> "Pear"
```

---

### How can we print out each element in the array?
### Loops!


# For Loop: Iterating over Arrays

```ruby
fruits = ["Apple", "Banana", "Pear"]

for fruit in fruits do
	puts fruit
end

```

---
# The Ruby Preferred: Each Loop

```ruby

fruits.each do |fruit|
	puts fruit
end

```
---
# each_with_index

```ruby
fruits.each_with_index do |fruit, index|
	puts "Fruit #{index}: #{fruit}"
end

# instead of

index = 0
fruits.each do |fruit|
	index = index + 1
	puts "Fruit #{index}: #{fruit}"
end

```

---

The most commonly used loops in Ruby are .each and while loops operating on arrays and hashes. Most iterations are done on collections.

---

So far we know how to create arrays, and loop over them. 

What about changing them?

---

# Adding & Removing Items to the Array

```ruby
>> todo_list = ["laundry", "pay rent"]
=> ["laundry", "pay rent"]

>> todo_list = todo_list + "clean room"
TypeError: no implicit conversion of String into Array

>> todo_list = todo_list - "laundry"
TypeError: no implicit conversion of String into Array
```

---

# We can't use the numeric operators to manipulate Arrays. So how can we update our list?

---

# Methods

Methods (a.k.a. functions/procedures) allow you to perform some operation on data types (e.g. strings, integers) as well as data structures (e.g. arrays).

---

# Calling Methods
### on Arrays

```ruby
>> todo_list = ["laundry", "pay rent"]
=> ["laundry", "pay rent"]

>> todo_list.push("clean room")
=> ["laundry", "pay rent", "clean room"]

>> todo_list.delete("laundry")
=> ["pay rent", "clean room"]

```

---

For now, just know that you can use methods like .push and .delete to perform their desired duties. We will learn more details about how methods work later on.

---

# Arrays Review

* We can create lists of things
* We can access specific items using their *index*
* We can modify the lists by adding/removing items with the ```.push``` or ```.delete``` methods
* We can iterate over items in the array with ```.each``` or ```for``` loop

---

# Hashes (a.k.a. Dictionaries)

---
# Hashes (Dictionaries) vs Arrays (Lists)

* Arrays just store a list of values
* Hashes store a list of values, where each value has a key
* e.g. A grocery list can be stored in an array, but a phonebook would require a Hash

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

### How do we print all the items in a hash?
### Loops!

---

# Iterating over a Hash
### Similar to Iterating over an Array

```ruby
# Iterating with an array
numbers = [1,2,3]
numbers.each do |number|
	puts number
end

# Iterating with a hash
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
