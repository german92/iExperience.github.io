# Control Flow

---
## What is Control Flow?

* So far our programs have had a *linear* flow. In other words, a set of things happen in order. 
* No matter what, those statements will execute in that exact order.
* As a program's complexity grows, we need to be able to execute different operations based on certain *conditions* (e.g. if the user chooses A, do something, if they choose B, do something else)
* Ruby has a special type of value that is used to store whether a condition is true or false

---

### Comparisons
#### Boolean Result

```ruby
>> (1 == 2)
=> false

>> (1 == 1)
=> true

>> (1 < 2)
=> true

>> (3 <= 3)
=> true
```

---

Pay close attention to the syntax in a statement like ```(1 == 2)```. It is not a variable assignment, or a method call.

It is a comparison *operator* as part of a *Boolean expression*.

---
## What is a Boolean Expression?

* A Boolean expression is one or more comparisons that evaluate to true or false
* The terms are each compared using comparison *operators*, which include: ==, <, <=, >, >=
* The comparison *operands* can be literal values (e.g. 1, 3, "hi") or variables

---
### Boolean Expressions
#### Using Variables

```ruby
>> x = 4
=> 4

>> y = 5
=> 5

>> (x == y)
=> false

>> (x < y)
=> true

>> (x >= y)
=> false
```
---

By themselves, Boolean Expressions don't seem to serve much value. Their power comes in when they are used to control logic flow of the program, typically using *if statements*.

---
### Control Flow
#### if statements

```ruby
>> x = 2
>> if (x == 2) # true
>>  puts "hey!"
>> end
hey!

>> y = 3
>> if (y == 3) # true
>>  puts "hey!"
>> end
hey!

>> if (x == y) # false
>>  puts "bye!"
>> end
```

---

## Multiple Boolean Expressions
### Combined using operators

```ruby

>> true && false
=> false

>> true || false
=> true

>> (1 < 3) && (6 > 3)
=> false

>> (1 < 3) || (6 > 3)
=> true
```

---
### Boolean vs Numeric Expressions

```ruby
>> true || false
=> true

>> (1 + 2)
=> 3

>> (3 + 4) * (1 + 2)
=> 21

>> (1 < 3) || (6 > 3)
=> true
```

---

Just like with numeric expressions, we can store the *result* of *evaluating* an expression into a variable.

---

### Boolean Variables

```ruby
>> y = (1 + 3)
=> 4

>> y
=> 4

>> x = (1 < 3)
=> true

>> x
=> true
```

---

We can also use boolean variables as part of other boolean expressions.

---

### Boolean Variables in Boolean Expressions

```ruby
>> x = (1 < 4)
=> true

>> y = (2 > 4)
=> false

>> z = (x && y)
=> false

>> z = (x || y)
=> true
```

---
```ruby
# parenthesis are optional
if x >= 50 && x <= 100
	puts "Math works!"
end

# but they make things more clear
if (x >= 50) && (x <= 100)
	puts "Math works!"
end

# variables simplify even further
a = x >= 50
b = x <= 100

if a && b
	puts "Math works!"
end
```
---

#### NOTE: Single vs Double Equal Signs

```ruby
>> x = 1 # Assignment, sets value of x
=> 1

>> x == 1 # Boolean Expression
=> true

>> y = 2 # Assignment, sets value of y
=> 2

>> x == y # Boolean Expression
=> false
```

---

We can use if statements that execute when a Boolean expression is true, but we can also use else statements to handle when the expression is false.

---
### if-else statements

```ruby
>> y = false

>> if y
>>   puts "Hurray for Y!"
>> end

>> if y
>>   puts "Hurray for Y!"
>> else
>>   puts "Boo for Y!"
>> end
Boo for Y!
```
---

We can further expand the 'else clause', and add additional alternative conditions.

---

### if-elsif-else statements

```ruby
>> x = true
>> y = false

>> if y # if y is true, do this
>>   puts "Hurray for Y!" 
>> elsif x # otherwise, if x is true, do this
>>   puts "Hurray for X!"
>> else # in all other cases, do this
>>   puts "Boo for X & Y!"
>> end
Hurray for X!
```
---

Always remember to close an if statement with an ```end```.

---

Let's try building some programs using control flow!

---
## Bouncer App

```
$ mkdir bouncer
$ touch bouncer/bouncer.rb
$ sublime bouncer
```
---

### bouncer.rb

```ruby
age = 21

if age == 21
	puts "You are 21! Come on in."
elsif age == 22
	puts "You are 22! Come on in."
else
	puts "Sorry! You're too young."
end
```

---
### Running Bouncer

```
$ ruby bouncer/bouncer.rb
You are 21! Come on in.
```
---
### Smarter Bouncer

```ruby
age = gets.to_i

if age >= 21
	puts "You're at least 21! Come on in."
else
	puts "You're too young. Sorry."
end
```
---
### Running Smarter Bouncer

```
$ ruby bouncer/bouncer.rb
You're at least 21! Come on in.
```

---
### Boolean 'Not' Modifier

```ruby
>> !true
=> false

>> x = true
=> true
>> !x
=> false

>> !(1 < 3)
=> false

```

---

### Boolean 'Not' Modifier

```ruby
>> healthy = false

>> if !healthy
>>   puts "Excercise!"
>> end

Exercise!

```

---
# Recap

* We can use expressions to store conditions in Boolean values
* We can make boolean expressions using multiple conditions, just like numeric expressions
* We can store the result of expressions in variables
* We can use variables as part of other expressions
* We can use if-else-elsif statements to control logic flow using boolean expressions
* We can also use Not modifiers to flip boolean values, and unless statements to invert if statements
---

# Loops

---

In addition to using conditionals to create 'switches' in program flow, we can also use loops to create repetition in our program.

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

*PRO TIP*: If you want to write quick programs without creating a whole Ruby file/folder, you can use ```pry``` instead of IRB, along with the ```edit``` command.

---
# Times Loop

```ruby
6.times do
	puts "Hey!"
end
```

---
# Breaking a Loop

```ruby
countdown = 10

while true
	countdown = countdown - 1

	if countdown == 0
		break
	end
end

```

---

# Exercise: E4 (FizzBuzz)

[http://iexperience.github.io/exercises/2A.html](http://iexperience.github.io/exercises/2A.html)

---

# Today's Summary

* We can use boolean expressions to represent conditions
* We can use if/else/unless statements to control program flow
* We can use loops to automate repetitive work

---

# EXERCISES

[http://iexperience.github.io/exercises/2A.html](http://iexperience.github.io/exercises/2A.html)