puts "Welcome to Tweet Analyzer!"

tweets = []
while true
	puts "Please enter 3 tweets:"
	3.times do
		tweets << gets.strip
	end
	
	puts "Would you like to enter more tweets?"
	answer = gets.strip
	break if ["n","N","NO","no"].include?(answer)
end

words = []
tweets.each do |tweet|
	words << tweet.split
end

words.flatten!

counts = {}

words.each do |word|
	if (counts[word])
		counts[word] += 1
	else
		counts[word] = 1
	end
end

max = 0
top_word = nil

counts.each do |word, count|
	if (count > max)
		top_word = word
		max = count
	end
end

puts "TOP WORD: #{top_word}"