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

What about changing them (e.g. adding & removing items)?

---

In the past, we've used Methods to perform operations on Strings (e.g. gets.strip). In Ruby, you can use Methods to perform operations on Arrays as well.

---

# Calling Methods
### on Arrays

```ruby
# Create an array
>> todo_list = ["laundry", "pay rent"]
=> ["laundry", "pay rent"]

# Add an element to an array
>> todo_list.push("clean room")
=> ["laundry", "pay rent", "clean room"]

# Remove an element from an array
>> todo_list.delete("laundry")
=> ["pay rent", "clean room"]

```

---

We can also find the union or intersect of arrays using the + and - operators

---
# Working with multiple arrays

```ruby
>> first = [1, 2, 3]
>> second = [2, 3, 4]

# union of arrays
>> first + second
=> [1, 2, 3, 2, 3, 4]

# intersection of arrays
=> first - second
=> [1]

```
---
# Unique elements

Sometimes we only want unique elements from an array. We can use ```uniq``` for this:

```ruby
>> repeats = [1,2,3,4,4,5,5,6]

>> repeats.uniq
=> [1,2,3,4,5,6]

```
---

# Arrays Review

* We can create lists of things
* We can access specific items using their *index*
* We can iterate over items in the array with ```.each``` or ```for``` loop
* We can modify the lists by adding/removing items with the ```.push``` or ```.delete``` methods
* We can get the union/intersect of two arrays using +/-
* We can get unique elements of an array using ```.uniq```

---

EXERCISE: E1

Spend 10 minutes working through this exercise.

---

# Hashes (a.k.a. Dictionaries)

---

Sometimes we need to store a list of things, but for each 'entry' in the list, we need to store two things rather than just one: we need to store both a 'key' as well as a 'value'.

The primary example of a Hash is a... dictionary! Each word maps to a definition. Another common example is a Phone book. Let's take a closer look at an example.

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

A hash maps a set of *unique* keys to values. You cannot have two values for the same key.

---

### Accessing Elements in a Hash

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

# Modifying a Hash

```ruby
# Adding a new element
>> numbers['Rafi'] = 892381232

# Removing an element
>> numbers.delete('Salman')
# OR
>> numbers['Salman'] = nil
```
---

# Accessing Keys & Values

```ruby
>> numbers = {'Salman' => 123456789, 'Aaron' => 567890934}
=> {'Salman' => 123456789, 'Aaron' => 567890934}

# this returns an Array!
>> numbers.keys
=> ['Salman', 'Aaron']

# this also returns an Array!
>> numbers.values
=> [123456789, 567890934]

```

---

### How do we print all the items in a hash?
### Loops!

---
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

Symbols are a simple data type in Ruby that uses less memory than Strings. We use them as keys for Hashes primarily, but you will see other use cases as well.

---

## Symbols
### Used as Keys for a Hash

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

In Ruby, method names, variable names, and Symbols are typically composed of lowercase letters and underscores. Stick to that convention (e.g. my_name not MyName34$).

---

# Resources

* Method Signatures: [http://www.sitepoint.com/method-signature-you-can-sink-your-teeth-into/](http://www.sitepoint.com/method-signature-you-can-sink-your-teeth-into/)
* More Info on Symbols: [http://www.troubleshooters.com/codecorn/ruby/symbols.htm](http://www.troubleshooters.com/codecorn/ruby/symbols.htm)
