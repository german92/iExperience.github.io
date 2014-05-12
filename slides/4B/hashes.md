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

### As always, look up the methods available on Hashes and Arrays in Ruby Documentation
### Play. Experiment. Learn.

---
