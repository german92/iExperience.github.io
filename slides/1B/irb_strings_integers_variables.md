# INTRO TO RUBY

---

## Pre-Requirements

* Make sure your local Ruby setup is working
* Ensure you have the latest stable Ruby (2.1.1)
* Verify you can access IRB

---

## Goals of Learning Ruby

* Familiary with the language and syntax
* Basic understanding of how to work with Ruby constructs
* Prepare you to write Ruby within Rails

---
## Disclaimer

* We will be spending about a week learning the art of programming in Ruby.
* While heads down in Ruby, it can sometimes be difficult to see how these lessons will help you build web applications. Your concern is normal.
* It is *critical* to build your understanding of programming and Ruby before you jump into Rails, so that you have a much strong handle on the tools.

---

## Background on Ruby

* Built by Yukihiro Matsumoto in the mid-90s
* Designed to be *fun*, easy to use, and flexible
* Dynamic scripting language (vs compiled like C)
* Includes automatic memory management
* Object-oriented language

---

To help us learn Ruby, we will learn it in a 'sandbox'. The sandbox we use for Ruby is known as the 'IRB Console'.

---

## What's IRB?

* IRB is a REPL (read-eval print loop) for the Ruby environment
* We use it as a sandbox to experiment with Ruby commands
* IRB is a great way to test out code without having to modify your application
* To access it, simply type 'irb' in your terminal

---

The simplest forms of programming manipulate strings (text) and integers (numbers). We'll start with those.

---

### Declaring Text (Strings)

```ruby
# Declare a string
>> "Hello"
=> "Hello"

>> "Goodbye"
=> "Goodbye"

# Combining two strings
>> "Hello" + "Goodbye"
=> "HelloGoodbye"

```

---

### Declaring Numbers (Integers)

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

For a program to provide value, it generally needs to be able to *store* data. In Ruby, you can store data inside named *variables*. Variables are like named lockers to hold your data, allowing you to access and change their contents at any time. 

---

### Assigning (String) Variables

```ruby
# Declare the variable
>> greeting = "Hello"
=> "Hello"

# Access the variable
>> greeting
=> "HelloThere"
```

---

### Assigning (Integer) Variables

```ruby
# Declare the variable
>> x = 5
=> 5

# Access the variable
>> x
=> 5
```

---

In Ruby, you do not need to specify what type of data the variable holds. Whether the variable is storing a String or an Integer, it is declared, accessed and assigned the same way.

---
### Assigning a var to another var

```ruby
>> x = 5
=> 5

# Set y equal to value of x (which is 5)
>> y = x
=> 5

>> x = 10
=> 10

# y is still 5
>> y
=> 5
```

---

Once a variable has been *declared*, 
you can always re-assign it to a new value.

---

### Re-assigning (String) Variables

```ruby
>> greeting = "Hey"
=> "Hey"

# Re-assign existing variable 
>> greeting = "Hello"
=> "Hello"

>> greeting
=> "Hello"

# Re-assign using existing value
>> greeting = greeting + " There"
=> "Hello There"

>> greeting
=> "Hello There"
```

---

### Re-assigning Integer Variables

```ruby
>> x = 1
=> 1

>> y = 2
=> 2

>> x = y + 5
=> 7

>> y = x + 5
=> 12
```

---

## Ruby Statements

1. Does some work
2. Returns a result

---
## NOTE:

* Assigning/re-assigning a variable always returns the variables **new** value after the assignment
* So far, the *result* of each statement is purely informative, but it will be important later

---

### Combining Integers and Strings

```ruby
>> days = 5
=> 5

>> headline = days + " days left"
# TypeError: String cant be coerced into Fixnum

# Interpolating a String
>> headline = "#{days} days left"
=> "5 days left"

>> next_year = 2015
=> 2015

>> headline = "#{days} days left until #{next_year}"
=> "5 days left until 2015"
```

---

# Recap

* We can declare strings (text) and integers (numbers)
* We can combine strings to create new strings
* We can perform operations on integers to create new integers
* We can assign string and integer variables
* We can reassign string and integer variables
* We can combine integers and strings using string interpoloation (```"hey there #{name}!```)
* Every statement will perform work & return a result

---

Now that we can store & manipulate strings and integers, let's build a program! To do so, instead of using IRB to enter each command one-by-one, we will create a Ruby script file with a sequence of statements.

---

### Create a Ruby Script File

```
$ mkdir survey # create a survey directory
$ touch survey/survey.rb # create an empty file called survey.rb
$ sublime survey # open the survey folder with your code editor
```

---

### survey.rb

```ruby
"Hello!"

name = "Salman"

"Welcome #{name}!"

age = 24

"You're #{age} years old!"

"Goodbye!"
```

---

### Run the script

```
$ ruby survey.rb
```

---

## Nothing happens! Why?

* In IRB, we were working with a REPL that displayed the result of each statement. 
* We saw output for each command because it automatically prints the result of the statement.
* In a program, we will not see any output unless we explictly print output to the screen.
* In Ruby, you can print out strings using the ```puts``` Ruby method.

---

### Wait, what is a Ruby Method?

* A method is a named command that you can invoke to perform an operation
* If you're familiar with other programming paradigms, a method is Ruby's equivalent of a function or procedure
* A method usually performs some work, and then optionally can return some result (e.g. the result of a calculation)

---

### Okay, what does this so-called ```puts``` method do?

* The ```puts``` method will print out a string to the command line
* You can call it (or, more formally, *invoke* it) by typing ```puts``` followed by the string you want to print. 
* When you 'pass' a method some data in this way, it is known as *passing an argument*. In the case of puts, the string you want to print is the argument.

---
### survey.rb
#### Now with puts-ing!

```ruby
# Method: puts  
# Argument: "Hello!"
puts "Hello!"

name = "Salman"

puts "Welcome #{name}!"

age = 29

puts "You're #{age} years old!"

puts "Goodbye!"
```
---

### Run the script

```
$ ruby survey.rb
Hello!
Welcome Salman!
You're 29 years old!
Goodbye!
```

---

Let's make the program even smarter by taking the name from *user input* (this means the user will be prompted to type in the user's name). We can do this with the help of another friendly *Ruby method* called ```gets```.

---
### What does the ```gets``` method do?

* The ```gets``` method prompts the user to type in text, and stores all text the user types until they hit the Enter key
* Once the ```gets``` method has finished running, it *returns* a string as its result
* You can then store the resulting string into a variable
* The ```gets``` method is part of Ruby's system library
---
### Gets vs Puts

* While the puts method simply performs an operation (print to screen), the ```gets``` method both performs an operation (takes input from screen) *and* returns a result (the string the user typed).
* As it turns out, ```puts``` actually returns as well, but it just returns nothing (the concept of 'nothing' is represented as Nil in Ruby)
* We don't *have* to save the result of method calls into variables. We can just ignore the result.
---

### survey.rb
#### ```gets``` in action

```ruby
# Calling method, ignoring result
puts "Hello!"

# Calling method, storing result
name = gets

puts "Please type your name:"

puts "Welcome #{name}!"

age = 29

puts "You're #{age} years old!"

puts "Goodbye!"
```

---

### Run the survey program

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
### Not Quite Right?

* If you notice, we are seeing the output show up as "Salman", followed by a "!" in the next line, rather than just "Salman!" as we intended.
* The reason for this is that the ```gets``` command also stores the 'newline' (the character created by hitting the Enter key).

---

### Solution

* What we want to do is get rid of the last newline character from the result of the ```gets```
* For this, we can use another Ruby method, ```strip```
* But how do we call ```strip``` on the result of ```gets```?
* ```gets``` will return a String, so we need to call ```strip``` on that resulting String

---
### How do I call a Method on a String?

* You can call a method *on* a string (in other words, perform an operation ON the string, rather than just perform an operation) by using Dot Notation
* In simplified terms, Dot Notation lets you call methods on things like Strings (we'll see other examples later)
* When you call a method on a string, the method has access to the string and operates accordingly

---
### The ```strip``` method

* The Ruby Method ```strip``` lets you strip leading and trailing blank, newline and tab characters from a string

```ruby
>> " hello ".strip
=> "hello"

>> "\t hello             \n".strip
=> "hello"

```

---

Let's use the ```strip``` method on the *String* that we get back from invoking the ```gets``` method.

---
### survey.rb

```ruby
puts "Hello!"
puts "Please type your name:"

name = gets
name = name.strip

puts "Welcome #{name}!"

age = 29

puts "You're #{age} years old!"
puts "Goodbye!"

```
---

### Run the script

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
### A word of caution
#### Variables vs Methods

* When you first look at ```name = gets```, it looks wonderful. It is simple. It is beautiful.
* While that is true, many students often get confused by the potential ambiguity of the statement
* In terms of syntax, ```name``` and ```gets``` have no discerning qualities (no paranthesis, for example). How does one know whether name is a variable or a method?
* The answer is that as a Ruby programmer, you have to pay attention to the code to keep track of it. It may seem daunting at first, but you will get used to it.

---

A single line of code often is confusing or ambiguous without the preceding or following lines of code. To read code effectively, you must always keep in mind the surrounding *context*.

---

### Choosing Variable & Method Names Wisely

* Given the inherent complexity of reading code, you should always strive make your code easier to read for others
* It's important to name variables appropriately so that it's inherently clear that they are variables (same goes for methods)
* For example, ```calculate``` would be a bad name for a variable. Similarly, ```result``` would be a bad name for a method.

---

Let's take the program one step further, and take the age as input as well.

---

### survey.rb

```ruby

puts "Hello!"
puts "Please type your name:"

name = gets
name = name.strip

puts "Welcome #{name}!"
puts "How old are you?"

age = gets
age = age.strip

puts "You're #{age} years old!"
puts "Goodbye!"

```

---

### Run the script

```
$ ruby survey.rb
Hello!
Please type your name:
Salman
Welcome Salman!
How old are you?
29
You're 29 years old!
Goodbye!
```

---

![Success Cat](../../images/slides/success-cat.jpg)

---
## SUCCESS

* You just built your first interactive Ruby application!
* It actually works!
* It takes in user input!
* It sanitizes data!
* It stores data in variables, and outputs them!
* It says Hello!
---

Can we do better?

---

Whenever you add new features (e.g. user input) to a program, always take the time to look at the code and see if you can improve it (e.g. by simplifying it). This process is called *refactoring*.

---
### survey.rb

```ruby

puts "Hello!"
puts "Please type your name:"

name = gets
name = name.strip

puts "Welcome #{name}!"
puts "How old are you?"

age = gets
age = age.strip

puts "You're #{age} years old!"
puts "Goodbye!"

```

---
### The strip method

The ```strip``` method can be called on *any* string. We don't have to store it in a variable first just to call the method -- we can call ```strip``` directly on the result of ```gets```.

---
### survey.rb v2

```ruby
puts "Hello!"
puts "Please type your name:"

name = gets.strip

puts "Welcome #{name}!"
puts "How old are you?"

age = age.strip

puts "You're #{age} years old!"
puts "Goodbye!"

```
---
## Simpler is Better

* We simplified the code by removing an unnecessary assignment call
* Also, we were able to reduce the overall number of lines of code, which makes it easier to read the program

---

Can we do better?

---
### survey.rb v2

```ruby
puts "Hello!"
puts "Please type your name:"

name = gets.strip

puts "Welcome #{name}!"
puts "How old are you?"

age = gets.strip

puts "You're #{age} years old!"
puts "Goodbye!"

```
---
## Improvement?

Do we even need those variables? Inside the put statement, could we just pass ```gets.strip``` directly, rather than storing it as a variable and passing that?

---
### survey.rb v3

```ruby
puts "Hello!"

puts "Please type your name:"
puts "Welcome #{gets.strip}!"

puts "How old are you?"
puts "You're #{gets.strip} years old!"

puts "Goodbye!"

```

---
### Is it really better?

* This code does in fact work.
* We removed lines of code, so it's simpler to read now, right?
* Not quite. Someone reading this might think, "Hmmm, it looks like it starts printing before it even gets user input. I wonder what happens?"
* In this case, we've created ambiguity by trying to be *too* clever / concise.

---

As a general rule, prioritize code clarity over efficiency. As with any rule, there are exceptions, but it's more important that your code is readable and maintanable in the long run than it is for it to be 10% faster.

---
## Today's Summary

* We learned how to work with IRB
* We learned how to write Ruby programs (scripts) as Ruby files
* We learned how to use strings & integers
* We learned how to store data in variables
* We learned how to call methods, and how to call them on strings
* We learned about the important of writing simple & clear code

