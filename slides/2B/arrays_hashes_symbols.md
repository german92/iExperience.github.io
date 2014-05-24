# Collections

* So far we have seen two main data types: Strings and Integers
* Sometimes, we want to store more than just one string or integer
* It is very common for us to need to store a **list** of data
* In Ruby, the Array data structure allows you to store a list
* The list can include integers, strings, or a combination of them

---

### Arrays

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

### Accessing Specific Array Elements
#### Using Array Index

```ruby
>> fruits = ["Apple", "Banana", "Pear"]
=> ["Apple", "Banana", "Pear"]

>> fruits[0] # 0 is the index of the first element
=> "Apple"

>> fruits[1]
=> "Banana"

>> fruits[2]
=> "Pear"
```

---

### Iterating over Arrays
#### With the For Loop

```ruby
>> fruits = ["Apple", "Banana", "Pear"]

>> for fruit in fruits do
>> 	puts fruit
>> end
Apple
Banana
Pear
=> ["Apple", "Banana", "Pear"]
```

---
### The Ruby Preferred: .Each Loop

```ruby
>> fruits.each do |fruit|
>>	puts fruit
>> end
```
---
### Iterating With Index
#### Use .each_with_index

```ruby
index = 0
fruits.each do |fruit|
	index = index + 1
	puts "Fruit #{index}: #{fruit}"
end

fruits.each_with_index do |fruit, index|
	puts "Fruit #{index}: #{fruit}"
end
```

---

The most commonly used loops in Ruby are .each loops operating on arrays and hashes, along with while loops with a 'done' condition.

---

So far we know how to create arrays, and loop over them. What about changing them (e.g. adding & removing items)?

In the past, we've used Methods to perform operations on Strings (e.g. gets.strip). In Ruby, you can use Methods to perform operations on Arrays as well.

---
### Adding & Removing Items

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

We can also find the union and difference of multiple arrays using the + and - operators.

---
### Working with multiple arrays

```ruby
>> first = [1, 2, 3]
>> second = [2, 3, 4]

# union of arrays
>> first + second
=> [1, 2, 3, 2, 3, 4]

# subtraction of arrays
=> first - second
=> [1]
```
---
### Unique elements

Sometimes we only want unique elements from an array. We can use ```uniq``` for this:

```ruby
>> [1,2,3,4,4,5,5,6].uniq
=> [1,2,3,4,5,6]

>> ([1,2,3,4,5] + [2,3,4,5,6]).uniq
=> [1,2,3,4,5,6]
```
---
### Splitting a string into an array

On occasion, we want to take a string and divide it up into pieces. We can do this using the ```split``` method on string. By default, the split method will split a string between spaces, but we can also pass a parameter to specify exactly what to split on. Super cool!

```ruby
>> "bring me juice".split
=> ["bring", "me", "juice"] # the .split method returns an array!

>> "first,second,third".split(",")
=> ["first", "second", "third"]

>> "www.google.com".split(".")
=> ["www", "google", "com"]
```

---

# RECAP

* We can create lists of things
* We can access specific items using their *index*
* We can iterate over items in the array with ```.each``` or ```for``` loop
* We can modify the lists by adding/removing items with the ```.push``` or ```.delete``` methods
* We can get the union/intersect of two arrays using +/-
* We can get unique elements of an array using ```.uniq```

---

EXERCISE: E1

Spend 10-15 minutes working through this exercise.

---

# Hashes (Dictionaries)

Sometimes we need to store a list of things, but for each 'entry' in the list, we need to store two things rather than just one: we need to store both a 'key' as well as a 'value'.

The primary example of a Hash is a... dictionary! Each word maps to a definition. Another common example is a Phone book. Let's take a closer look at an example.

---

### Creating a Hash
#### Phone Book

```ruby
>> numbers = {'Salman' => 123456789, 'Aaron' => 567890934}
=> {'Salman' => 123456789, 'Aaron' => 567890934}

>> numbers['Salman']
=> 123456789

>> numbers['Aaron']
=> 567890934
```

---

A hash maps a set of *unique* keys to values. You can never have two values for the same key.

---
```ruby
>> numbers = {'Salman' => 123456789, 'Aaron' => 567890934}

>> numbers.has_key?('Salman')
=> true

>> numbers.keys
=> ['Salman', 'Aaron']

>> numbers['Nonexistent']
=> nil # nil is Ruby's special type to represent 'nothing'
```
---

### Modifying a Hash

```ruby
# Adding a new element
>> numbers['Rafi'] = 892381232

# Removing an element
>> numbers.delete('Salman')

>> numbers
=> {'Aaron' => 567890934, 'Rafi' => 892381232}
```
---

As of Ruby 1.9+, the ordering of elements in a Hash is based on the order of insertion. So, you can rely on its order being preserved. However, in general, you should not make assumptions about ordering of Hash keys. Treat Hashes as a mixed bag.

---

### Accessing Keys & Values

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

#### Iterating Elements in a Hash

---
```ruby
# Iterating with an array
numbers = [1,2,3]
numbers.each do |number|
	puts number
end
# 1
# 2
# 3

# Iterating with a hash
phone_numbers = {'Salman' => 123456789, 'Aaron' => 567890934}
phone_numbers.each do |name, number|
	puts number
end
# 123456789
# 567890934
```
---

So far, you have seen Strings used as keys in Hashes. This is actually an inefficient thing to do, as Strings are memory intensive (they take up a lot of space).

Ruby provides us with a cheaper way to store simple keys: *Symbols*.

---

### Declaring Symbols

Symbols are written with a colon followed by a (generally lowercase) string. While they do support capital letters and numbers, it is not advised to use them. Special characters (e.g. !, @, $) are not supported in symbols.

This is good style:
```ruby
:name
:next_page
```

This is not good style:
```ruby
:HelloThere # capitalizing words
:summerof69 # using numbers
```

---
### Symbols as Hash Keys

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
