require 'rest-client'
require 'json'

# ---
# VERSION 1:
# ---

status = "open"

response = RestClient.get("https://api.whitehouse.gov/v1/petitions.json")

petitions = JSON.parse(response)["results"]

petitions.each do |petition|
	puts petition["title"]
end

# ---
# VERSION 2:
# ---

puts "Welcome to White House Petitions!"
puts "Which petitions would you like to see? ('open' or 'closed')"

status = gets.strip

response = RestClient.get("https://api.whitehouse.gov/v1/petitions.json?status=#{status}")

petitions = JSON.parse(response)["results"]

petitions.each do |petition|
	puts petition["title"]
end

# ---
# VERSION 3:
# ---

puts "Welcome to White House Petitions!"

puts "Which petitions would you like to see? ('open' or 'closed')"

status = gets.strip

puts "How many petitions would you like to see? (1-10)"

limit = gets.to_i

puts "Loading..."

response = RestClient.get("https://api.whitehouse.gov/v1/petitions.json?status=#{status}&limit=#{limit}")

petitions = JSON.parse(response)["results"]

petitions.each_with_index do |petition, index|
	puts "#{index+1}. #{petition["title"]}"
end

# ---
# VERSION 4:
# ---

puts "Welcome to White House Petitions!"

puts "Which petitions would you like to see? ('open' or 'closed')"

status = gets.strip

offset = 0

done = false

while done == false
	puts "Loading..."

	response = RestClient.get("https://api.whitehouse.gov/v1/petitions.json?status=#{status}&offset=#{offset}&limit=5")

	petitions = JSON.parse(response)["results"]

	petitions.each_with_index do |petition, index|
		puts "#{offset+index+1}. #{petition["title"]}"
	end

	offset += petitions.size

	puts "Would you like to see more petitions? (yes or no)"

	more = gets.strip

	if more == "no"
		break
	end
end
