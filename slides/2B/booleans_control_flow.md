## Control Flow

* A program's operation changes based on varying conditions
* We can use conditions to control program flow
* In Ruby we use Boolean expressions to represent conditions

---

## Boolean Expressions

```ruby
>> true
=> true

>> false
=> false

>> 1 < 3
=> true

>> (5 > 100)
=> false

```

---

### Boolean Expressions (Cont'd)

```ruby
>> 1 == 2
=> false

>> 1 == 1
=> true

>> 1 < 2
=> true

>> 3 <= 3
=> true
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
## Boolean Variables

```ruby
>> 1 < 3
=> true

>> x = (1 < 3)
=> true

>> y = (6 > 5)
=> false

>> x && y
=> false

>> x || y
=> true
```

---


## Control Flow
### if statements

```ruby
>> x = 2
>> if (x == 2)
>>  puts "hey!"
>> end
hey!

>> y = 3
>> if (y == 3)
>>  puts "hey!"
>> end
hey!

>> if (x == y)
>>  puts "bye!"
>> end
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

## Control Flow
### if-else statements

```ruby
>> y = false

>> if y
>>   puts "Hurray for Y!"
>> else
>>   puts "Boo for Y!"
>> end

Boo for Y!
```

---

## Control Flow
### if-elsif-else statements

```ruby
>> x = true
>> y = false

>> if y
>>   puts "Hurray for Y!"
>> elsif x
>>   puts "Hurray for X!"
>> else
>>   puts "Boo for X & Y!"
>> end

Hurray for X!
```

---

## 'Not' Modifier

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

## 'Not' Modifier

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

## Excercise: FizzBuzz

Write a program that prints the numbers from 1 to 100.
But for multiples of three print “Fizz” instead of the
number and for the multiples of five print “Buzz”. For
numbers which are multiples of both three and five
print “FizzBuzz”.

---