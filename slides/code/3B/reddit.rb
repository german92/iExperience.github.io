require 'rest-client'
require 'json'

# ---
# Version 1
# ---

puts "Welcome to Reddit!"

puts "Which stories would you like to see? ('top', 'hot', 'random')"

feed = gets.strip

response = RestClient.get("http://reddit.com/#{feed}.json")

parsed_response = JSON.load(response)

stories = parsed_response["data"]["children"]

stories.each do |story|
	puts "[#{story["data"]["url"]}]: #{story["data"]["title"]}"
end

# ---
# Version 2
# Filter by subreddit
# Display upvotes
# ---

puts "Welcome to Reddit!"

puts "Which stories would you like to see? ('top', 'hot', 'random')"

feed = gets.strip

puts "Which subreddit would you like to see? (leave blank for none)"

subreddit = gets.strip

puts "Loading..."

if subreddit.empty?
	response = RestClient.get("http://reddit.com/#{feed}.json?limit=5")
else
	response = RestClient.get("http://reddit.com/r/#{subreddit}/#{feed}.json?limit=5")
end

parsed_response = JSON.load(response)

stories = parsed_response["data"]["children"]

stories.each do |story|
	puts "[#{story["data"]["score"]}]: #{story["data"]["title"]}"
end

# ---
# Version 3
# Simplify subreddit logic
# ---

puts "Welcome to Reddit!"

puts "Which stories would you like to see? ('top', 'hot', 'random')"

feed = gets.strip

puts "Which subreddit would you like to see? (leave blank for none)"

subreddit = gets.strip

# if !subreddit.empty?
#   subreddit = "/r/#{subreddit}"
# end
subreddit = subreddit.empty? ? "" : "/r/#{subreddit}"

puts "Loading..."

# response = RestClient.get("http://reddit.com/#{subreddit.empty? ? "" : "/r/#{subreddit}"}#{feed}.json?limit=5")
response = RestClient.get("http://reddit.com/#{subreddit}#{feed}.json?limit=5")

parsed_response = JSON.load(response)

stories = parsed_response["data"]["children"]

stories.each do |story|
	puts "[#{story["data"]["score"]}]: #{story["data"]["title"]}"
end

# ---
# Version 4
# Sort by score
# ---

puts "Welcome to Reddit!"

puts "Which stories would you like to see? ('top', 'hot', 'random')"

feed = gets.strip

puts "Which subreddit would you like to see? (leave blank for none)"

subreddit = gets.strip
subreddit = subreddit.empty? ? "" : "/r/#{subreddit}"

puts "Loading..."

response = RestClient.get("http://reddit.com/#{subreddit}#{feed}.json?limit=5")

parsed_response = JSON.load(response)

stories = parsed_response["data"]["children"]

# stories = stories.sort_by! do |story|
stories = stories.sort_by do |story|
	story["data"]["score"]
end

stories.each do |story|
	puts "[#{story["data"]["score"]}]: #{story["data"]["title"]}"
end