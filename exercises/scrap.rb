puts "Hello!"
puts "How old are you?"
my_age = gets.to_f
puts "How old is your mom?"
mom_age = gets.to_f
puts "How old is your dad?"
dad_age = gets.to_f
average = (my_age + mom_age + dad_age)/3
puts "Thanks for answering my creepy questions! The average age of your family is #{average} years old!"
puts "Goodbye!"
