# Control Flow

---
# What is Control Flow?

* So far our programs have had a *linear* flow. In other words, a set of things happen in order. 
* No matter what, those statements will execute in that exact order.
* As a program's complexity grows, we need to be able to execute different operations based on certain *conditions* (e.g. if the user chooses A, do something, if they choose B, do something else)
* Ruby has a special type of value that is used to store whether a condition is true or false

---

## Booleans

```ruby
>> true
=> true

>> false
=> false

```

---

## Boolean Expressions

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

Pay close attention to the syntax in a statement like ```1 == 2```. It is not a variable assignment, it is not a method call. It is an *evaluation* of a Boolean expression.

---
# What is a Boolean Expression?

* An expression is simply a set of terms that evaluate to true or false
* The terms are each compared using comparison operators, which include: ==, <, <=, >, >=
* They can compare any simple values, or variables

---
## Boolean Expressions

```ruby
>> (x = 4)
=> 4

>> (y = 5)
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

## Control Flow
### if statements

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
## Boolean vs Numeric Expressions

You've actually already worked with another kind of expression: Numeric Expressions. They operate in a very similar way to Boolean Expressions.

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

## Boolean Variables

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

## Boolean Variables in Boolean Expressions

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

### NOTE: Single vs Double Equal Signs
#### (Assignment vs Boolean Expression)

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
## if-else statements

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

## if-elsif-else statements

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
# Recap

* We can use expressions to store conditions in Boolean values
* We can make boolean expressions using multiple conditions, just like numeric expressions
* We can store the result of expressions in variables
* We can use variables as part of other expressions
* We can use if-else-elsif statements to control logic flow using boolean expressions
* We can also use Not modifiers to flip boolean values, and unless statements to invert if statements

---

### Bouncer

```ruby
>> age = 21
=> 21

>> if age == 21
>>   puts "You are 21! Come on in."
>> elsif age == 22
>>   puts "You are 22! Come on in."
>> else
>>   puts "Sorry! You're too young."
>> end
You are 21! Come on in.
=> nil
```

---

### Smarter Bouncer

```ruby
>> age = gets.to_i
=> 21

>> if age >= 21
>>   puts "You're at least 21! Come on in."
>> else
>>   puts "You're too young. Sorry."
>> end
```

---

## Boolean 'Not' Modifier

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

## Boolean 'Not' Modifier

```ruby
>> healthy = false

>> if !healthy
>>   puts "Excercise!"
>> end

Exercise!

```

---

## Control Flow
### unless statements

```ruby
>> done = false

>> unless done
>>   puts "Keep working!"
>> end

Keep working!
```

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

## Exercise: E1 (FizzBuzz)

Write a program that prints the numbers from 1 to 100.
But for multiples of three print “Fizz” instead of the
number and for the multiples of five print “Buzz”. For
numbers which are multiples of both three and five
print “FizzBuzz”.

---

# Today's Summary

* We can use boolean expressions to represent conditions
* We can use if/else/unless statements to control program flow
* We can use loops to automate repetitive work