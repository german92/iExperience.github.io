# INTRO TO RUBY

---

## Pre-Requirements

* Make sure your local Ruby setup is working
* Ensure you have the latest stable Ruby (2.1.1)
* Verify you can access IRB

---

## IRB is a REPL

* IRB: Interactive Ruby
* REPL: Read-Eval Print Loop

---

## [fit] "Do something, then return result"

---

### Try out IRB

```ruby
>> "Hello World!"
=> Hello World!

>> 1
=> 1

>> 1 + 1
=> 2
```

---

### Print Command

```ruby

>> puts("Hello World")
Hello World
=> nil

>> puts(1)
1
=> nil

>> puts(1 + 1)
2
=> nil

```

---

### Space It Up

```ruby

>> puts "Hello World"
Hello World
=> nil

=> puts 1
1
=> nil

>> puts 1 + 1
2
=> nil

```

---

### Variable Assignment

```ruby
>> x = "Hello World"
=> "Hello World"
>> puts x
Hello World
=> nil

>> y = 1 + 1
=> 2
>> puts y
2
=> nil
```

^ This is known as ASSIGNMENT
^ Note the SINGLE equal sign

---

### Variable Assignment (Cont'd)

```ruby
>> x = 1
=> 1

>> y = 2
=> 2

>> z = x + y
=> 3

>> z = z + 1
=> 4
```

---

### Comparisons

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

^ Note the DOUBLE equal sign

---

### Single vs Double
#### (Assignment vs Comparison)

```ruby
>> x = 1 # Assignment, sets value of x
=> 1

>> x == 1 # Comparison
=> true

>> y = 2 # Assignment, sets value of y
=> 2

>> x == y # Comparison
=> false
```

---

### Control Flow

```ruby
>> age = 24
=> 24

>> if age == 24
>>   puts "You are 24!"
>> end
You are 24!
=> nil
```

---

### Control Flow (Cont'd)

```ruby
>> age = 21
=> 21

>> if age == 24
>>   puts "You are 24!"
>> else
>>   puts "You are not 24..."
>> end
You are not 24...
=> nil
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

## IRB is great for testing __short__ programs...

---

### Create a Ruby File

```
$ cd workspace
$ mkdir bouncer
$ cd bouncer

$ sublime bouncer.rb
```

---

### bouncer.rb

```ruby

age = gets.to_i

if age >= 21
  puts "You're at least 21! Welcome."
else
  puts "Sorry, you're too young..."
end

```

---

### Run the Ruby File

```

$ ruby bouncer.rb
21
You're at least 21! Welcome.

$ ruby bouncer.rb
18
Sorry, you're too young...

```

---

### EXCERCISE: Survey Ruby Program

Write a Ruby program that will:

1. Print out questions
* Use 'gets' to get user input
* Store answers in variables
* Print answers at end
* Be creative!

