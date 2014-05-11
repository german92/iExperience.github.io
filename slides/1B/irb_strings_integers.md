# INTRO TO RUBY

---

## Pre-Requirements

* Make sure your local Ruby setup is working
* Ensure you have the latest stable Ruby (2.1.1)
* Verify you can access IRB

---

## What's IRB?

* IRB is basically a responsive console for Ruby
* We use it as a sandbox to try out Ruby commands
* To access it, simply type 'irb' in your terminal
* IRB is a REPL (read-eval print loop)

---

## [fit] General flow with IRB is to perform a command, and then return a result.

---

## [fit] The simplest forms of programming manipulate strings (text) and integers (numbers). We'll start with those.

---

# Try out IRB
## Creating Strings

```ruby
>> "Hello there"
=> "Hello there"

>> "Hello" + "there"
=> "Hellothere"

>> "Hello" - "Hell"
NoMethodError: undefined method `-' for "Hello":String

```

---

# Try out IRB
## Creating Numbers

```ruby
>> 5
=> 5

>> 5 + 11
=> 16

>> 21 - 1
=> 20

>> 5 * 4
=> 20

>> 20 / 5
=> 4
```

---

# For a program to provide value, it needs to be able to store data, not just create it.

---

# Storing Strings (text)
## By Assigning Variables

```ruby
>> "Hello"
=> "Hello"

>> greeting = "Hello"
=> "Hello"

>> greeting
=> "HelloThere"

```

---

# Storing Integers (numbers)
## By Assigning Variables

```ruby
>> 5
=> 5

>> x = 5
=> 5

>> x
=> 5

>> y = x
=> 5

>> y
=> 5
```

---

# Once a variable is created, you can re-assign it to a new value.

---

# Re-assigning String Variables

```ruby
>> greeting = "Hey"
=> "Hey"

>> greeting = "Hello"
=> "Hello"

>> greeting
=> "Hello"

>> greeting = greeting + " There"
=> "Hello There"

>> greeting
=> "Hello There"
```

---

# Pay close attention to what each statement is doing (e.g. assigning a variable vs accessing it)

---

# Re-assigning Integer Variables

```ruby
>> x = 1
=> 1

>> x = 2
=> 2

>> x = x + 5
=> 7

>> x
=> 7
```

---

# Every statement does some work, then returns a result

* Accessing a variable always returns the variable's current value
* Assigning/re-assigning a variable always returns the variables **new** value after the assignment
* So far, the 'result' of each statement is not useful, but it will be important to us soon

---

# Combining Integers and Strings

```ruby
>> days = 5
=> 5

>> headline = days + " days left"
TypeError: String can't be coerced into Fixnum

>> headline = "#{days} days left"
=> "5 days left"

>> next_year = 2015
=> 2015

>> headline = "#{days} days left until #{next_year}"
=> "5 days left until 2015"
```

---

# Don't get thrown off by 'days' being both a variable name and text in a string. Syntax coloring can help with this.

---


# Recap

* We can create strings and integers
* We can combine strings to create new strings
* We can perform operations on integers to create new integers
* We can assign string and integer variables
* We can reassign string and integer variables
* We can combine integers and strings using #{}
* Every statement we issue will also return a result

---


# We can now store & manipulate strings and integers. Let's write a program!

---

# Greeting App

```ruby
>> "Hello!"
=> "Hello"

>> name = "Salman"
=> "Salman"

>> "Welcome " + name
=> "Welcome Salman"

>> age = 24
=> 24

>> "You're #{age} years old!"
=> "You're 24 years old!"

```

---

# In IRB, we have to manually instruct each statement every time. We want to write a full program that can perform **multiple** statements automatically.

---

# We can write Ruby scripts to automate a sequence of instructions.

---

### Create a Ruby Script

```
$ cd workspace
$ mkdir survey
$ cd survey

$ sublime survey.rb
```

---

# survey.rb

```ruby

"Hello!"

name = "Salman"

"Welcome #{name}"

age = 24

"You're #{age} years old!"

"Goodbye!"

```

---

# Run the script

```
$ ruby survey.rb
```

---

# Nothing happens because all we did was create strings in memory. We need to **print out** strings to the user to see the program work.

---

# In Ruby, you can print out strings using the 'puts' command

---

# survey.rb
## Now with puts-ing!

```ruby

puts "Hello!"

name = "Salman"

puts "Welcome #{name}!"

age = 29

puts "You're #{age} years old!"

puts "Goodbye!"

```

---

# Run the script

```
$ ruby survey.rb
Hello!
Welcome Salman!
You're 29 years old!
Goodbye!
```

---

# Let's make the program even smarter by taking the name from user input! We can do this with the Ruby 'gets' command

---

### survey.rb
#### Using gets to get the name

```ruby

puts "Hello!"

name = gets

puts "Please type your name:"

puts "Welcome #{name}!"

age = 29

puts "You're #{age} years old!"

puts "Goodbye!"

```

---

# Run the script

```
$ ruby survey.rb
Hello!
Please type your name:
Salman
Welcome Salman
!
You're 29 years old!
Goodbye!
```

---

# The 'gets' command also stores the newline you typed when you hit Enter... we can fix this by using 'gets.strip' instead

---

# survey.rb

```ruby

puts "Hello!"

name = gets.strip

puts "Please type your name:"

puts "Welcome #{name}!"

age = 29

puts "You're #{age} years old!"

puts "Goodbye!"

```

---

# Run the script

```
$ ruby survey.rb
Hello!
Please type your name:
Salman
Welcome Salman!
You're 29 years old!
Goodbye!
```

---

# Final touch: take in the age from user input as well

---

# survey.rb

```ruby

puts "Hello!"

name = gets.strip

puts "Please type your name:"

puts "Welcome #{name}!"

puts "How old are you?"

age = gets.strip

puts "You're #{age} years old!"

puts "Goodbye!"

```

---

# Run the script

```
$ ruby survey.rb
Hello!
Please type your name:
Salman
Welcome Salman!
How old are yoU?
29
You're 29 years old!
Goodbye!
```

---

# Congrats! You just built your first interactive Ruby application!

---

### HOMEWORK

Watch TreeHouse lessons on Strings, Numbers, Arrays