1.upto(100) do |number|
	if (number%3 == 0)
		puts "Fizz"
	elsif (number%5 == 0)
		puts "Buzz"
	elsif (number%3 == 0 && number%5 == 0)
		puts "FizzBuzz"
	else
		puts number
	end
end

1.upto(100) do |number|
  output = "#{number % 3 == 0 ? 'Fizz' : ''}#{number % 5 == 0 ? 'Buzz' : ''}"
  puts output.empty? ? number : output
end