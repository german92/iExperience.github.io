# Methods & Objects

---

So far, we have been invoking methods on a variety of different things (Strings, Arrays, etc.). Let's review those cases and see if we can find any common patterns.

---

# Calling Methods
### on Arrays

```ruby
numbers = [1,2,3]

numbers.push(4)

numbers.each do |number|
  puts number
end
```

---

# Calling Methods
### on Strings

```ruby
>> x = "hello"
=> "Hello"

>> x.upcase
=> "HELLO"

>> x.downcase
=> "hello"

>> x.size
=> 5
```

---

# Calling Methods
### on Integers

```ruby
>> x = 5
=> 5

>> x.to_s
=> "5"

>> puts x.to_s + " days left"
=> "5 days left"

>> puts "#{x} days left"
=> "5 days left"

```

---

# What do they have in common?
### Strings, Numbers, Arrays

* They hold data
* They can be stored in variables
* They have methods you can call on them
* They are all *objects*!

---

# In Ruby, Everything is an Object

---

# What are Objects?

* The basic building blocks (atoms) of Ruby
* Everything in Ruby is based on an object
* Every object has a type, known as its __Class__ (String, Fixnum (Integer), Array)

---

# Classes of Objects
* __String__ is a Class of Object to hold text data
* __Fixnum__ is a Class of Object to hold integers/numbers
* __Array__ is a Class of Object to hold lists of other objects (e.g strings and numbers)

---

# What class am I?
## Use the .class method to find out!

```ruby
>> "Hello".class
=> String

>> 5.class
=> Fixnum

>> [1,2,3].class
=> Array

```

---

# What are Objects again?

* The basic building blocks of Ruby
* Every object has a __Class__ (String, Fixnum (Integer), Array)
* All objects have __Methods__ you can call on them, based on their class

---

# What are Methods again?

* __Methods__ are commands that can be called on objects to perform work
* Depending on which __Class__ of Object it is, it has different methods

```ruby
>> "hello".upcase
=> "HELLO"
>> [1,2,3].join
=> "123"
```
* NOTE: All objects get methods from the Object class

---

# What are Objects?

* The basic building blocks of Ruby
* Every object has a __Class__ (String, Fixnum (Integer), Array)
* All objects have __Methods__ you can call on them, based on their class
* __Instances__ of objects hold __data__, based on their class


---

# Instances of Objects

* This is an __instance__ of the __String__ class:

```ruby
>> "Hello"
```

* This is an __instance__ of the __Fixnum__ (Integer) class:

```ruby
>> 1
```

* This is an __instance__ of the __Array__ class:

```ruby
>> [1,2,3]
```

---

# Why does this matter?

* It's important to know the terminology of **classes**, **objects** and **instances** as early as possible so you can differentiate between them
* It's okay if you don't get it right away -- these will be reinforced repeatedly

---

# Review

* **Classes** are the types of a given object. They determine what kinds of methods it has (i.e. the species)
* **Methods** are functions/procedures you can call on instances of objects (i.e. what the species can do)
* **Instances** are incarnation of objects of a specified class (i.e a single animal of the given species)
* **Objects** are the basic building blocks of Ruby that everything is built off of (i.e. atoms)
* **Variables** store instances of objects with a variable name you can reference (i.e. the same way we give each other unique names to remember who we are)

---

Remember: *Everything* is an Object.