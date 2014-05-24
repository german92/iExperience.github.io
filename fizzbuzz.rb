1.upto(100) do |number|
  output = "#{number % 3 == 0 ? 'Fizz' : ''}#{number % 5 == 0 ? 'Buzz' : ''}"
  puts output.empty? ? number : output
end