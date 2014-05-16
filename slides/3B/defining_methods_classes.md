# Defining Methods

### As behavior starts to get more complex, we will occasionally
### want to group functionality together into a method
### a.k.a function, procedure

---

# Simple Method Example

```ruby

def say_hello
	puts "Hello"
end

say_hello

```

---

### Once a method is defined, you can call it as many times as you want
### This is referred to as 'invoking' the method

---

# Invoking Methods

```ruby

def shout_hello
	puts "HELLO!"
end

shout_hello
shout_hello
shout_hello

3.times do
  shout_hello
end

```

---

### You can pass a method 'arguments' to make it behave differently

---

# Method w/ Arguments

```ruby

def say(message)
	puts message
end

say("Hey")
say "Hi"

```

---

# Method w/ Arguments
### Modifying the argument

```ruby

def shout(message)
	puts message.upcase + "!"
end

shout("hi")

# String Interpolation:
def shout(message)
	puts "#{message.upcase} !"
end

shout("hi")
```

---

## EXERCISE: Write a program that defines a method which takes an argument to shout a message. The argument should be passed to the program by user input (Hint: Gets method)

---

# Why Define Methods?

### The #1 motivation for methods is to stay D.R.Y
### D.R.Y.: Don't Repeat Yourself
### We want to avoid duplicate code at all costs

---

# Duplication Example: Cart

```ruby
cart = []

# Go Shopping!
cart.push("Eggs")
cart.push("Milk")
cart.push("Cheese")
puts "Done shopping! I bought #{cart.size} items."

# Put stuff in car
cart.delete_all

# Go Shopping Again!
cart.push("Eggs")
cart.push("Milk")
cart.push("Cheese")
puts "Done shopping! I bought #{cart.size} items."
```

---

# DRY'd Up Example: Cart

```ruby
def go_shopping(cart)
	cart.push("Eggs")
	cart.push("Milk")
	cart.push("Cheese")
	puts "Done shopping! I bought #{cart.size} items."
end

my_cart = []

go_shopping(my_cart)
cart.delete_all

go_shopping(my_cart)
cart.delete_all
```

---

# Defining Classes

---

While we can use hashes to sore data, sometimes it can be cumbersome to use methods to keep them updated

---
# Employees Example

```ruby
salman = {:age => 29, :first_name => 'Salman', :last_name => 'Ansari'}

def get_full_name(person)
	"#{person[:first_name]} {person[:last_name]}"
end

get_full_name(salman)

```

---

The method 'get_full_name' now can be called by anyone, being passed any parameter. This is not ideal.

---

Object-Oriented Programming dictates that we should encapsulate data and behavior inside relevant objects, so that concerns are separated appropriately

---

In other words, an object should know how to store and change its own data. The whole world does not need to know how to work with an object's inner details.

---
### Employees Example Revisited

```
class Employee
	def initialize(age, first_name, last_name)
		@age = age
		@first_name = first_name
		@last_name = last_name
	end

	def full_name
		"#{@first_name} #{@last_name}"
	end
end

salman = Employee.new(29, 'Salman', 'Ansari')

salman.age
# => 29

salman.full_name
# => 'Salman Ansari'
```

---
# Key Concepts

* Declare a class with ```class ClassName...end```
* Define methods inside the class with ```def method_name...end```
* Instantiate an instance of a Class with .new
* Call methods on the instance just like with Array/String/etc

---

Result: Now only Employee class knows how to generate full names from first and last names. Furthermore, we have a much simpler way of storing employees, accessing their info, and manipulating it.

---
### Multiple Classes

```ruby
class Engineer
	def initialize(age, first_name, last_name)
		@age = age
		@first_name = first_name
		@last_name = last_name
	end

	def full_name
		"#{@first_name} #{@last_name}"
	end
end

salman = Engineer.new(20, 'Salman', 'Ansari')

class Designer
	def initialize(age, first_name, last_name, website)
		@age = age
		@first_name = first_name
		@last_name = last_name
		@website = website
	end

	def full_name
		"#{@first_name} #{@last_name}"
	end
end

aaron = Designer.new(20, 'Aaron', 'Fuchs', 'http://www.iexperience.co.za')

```
---
### Sharing Methods via Class Inheritance
```ruby
class Employee
	def full_name
		"#{@first_name} #{@last_name}"
	end
end

class Engineer < Employee
	def initialize(age, first_name, last_name)
		@age = age
		@first_name = first_name
		@last_name = last_name
	end
end

class Designer < Employee
	def initialize(age, first_name, last_name, website)
		@age = age
		@first_name = first_name
		@last_name = last_name
		@website = website
	end
end
```
---

As the number of classes declared increases, we will want to separate out each Ruby Class declaration into its own file

---
```ruby
# in employee.rb
class Employee
	...
end
# in engineer.rb
class Engineer
	...
end
# in designer.rb
class Designer
	...
end

# in main.rb
require_relative 'employee'
require_relative 'engineer'
require_relative 'designer'

salman = Engineer.new(20, 'Salman', 'Ansari')
aaron = Designer.new(20, 'Aaron', 'Fuchs', 'http://www.iexperience.co.za')
```
---

While we are just working with Ruby, a good practice is to have a single ```main.rb``` file with your entire program in it, which requires any other classes it needs in order to function using ```require_relative```

---

## Q. What if you wanted to inherit from multiple classes?
## A. You can't.

---

To get methods from multiple places, we use Modules

---
```ruby
module FullNames
	def full_name
		"#{@first_name} #{@last_name}"
	end
end

module Initials
	def initials
		"#{@first_name[0]} #{@last_name[0]}"
	end
end

class Employee
	include FullNames
	include Initials
end

salman = Employee.new(20, 'Salman', 'Ansari')
salman.full_name
# => Salman Ansari
salman.initials
# => SA
```

---