# Lists of Data

* So far we have seen two main data types: Strings and Integers
* Sometimes, we want to store more than just one string or integer
* It is very common for us to need to store a **list** of data
* In Ruby, the Array data structure allows you to store a list
* The list can include integers, strings, or a combination of them

---

# Arrays

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

### How can we print out each element in the array?
### Loops!

---

# While Loop

```ruby

i = 10

while i > 0
	puts i
	i = i - 1
end
```

---

# Until Loop

```ruby

i = 0

until i > 10
	puts i
	i = i + 1
end
```

---

# Times Loop

```ruby

6.times do
	puts "Hey!"
end
```

---

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

### The most commonly used loops in Ruby are .each and while

---