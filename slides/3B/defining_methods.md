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

# Go shopping!
go_shopping(my_cart)
# Put stuff in car
cart.delete_all

# Go shopping!
go_shopping(my_cart)
# Put stuff in car
cart.delete_all
```