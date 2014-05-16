# Defining Classes

---

# While we can use hashes to sore data, sometimes it can be
# cumbersome to use methods to keep them updated

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

# The method 'get_full_name' now can be called by anyone, being 
# passed any parameter. This is not ideal.

---

# Object-Oriented Programming dictates that we should encapsulate data and behavior
# inside relevant objects, so that concerns are separated appropriately

---

# In other words, an object should know how to store and change its own data.
# The whole world does not need to know how to work with an object's inner details.

---
# Employees Example Revisited

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

## Result: Now only Employee class knows how to generate full names from first and last names. Furthermore, we have a much simpler way of storing employees, accessing their info, and manipulating it.

---
# Multiple Classes

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
# Sharing Methods
## via Class Inheritance

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

# As the number of classes declared increases, we will want to separate out
# each Ruby Class declaration into its own file

---
```ruby
# in employee.rb
class Employee
	def full_name
		"#{@first_name} #{@last_name}"
	end
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

## While we are just working with Ruby, a good practice is to have a single ```main.rb``` file with your entire program in it, which requires any other classes it needs in order to function using ```require_relative```

---

## Q. What if you wanted to inherit from multiple classes?
## A. You can't.

---

## To get methods from multiple places, we use Modules

---
# Including Modules

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