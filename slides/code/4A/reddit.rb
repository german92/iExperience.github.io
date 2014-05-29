require 'rest-client'
require 'json'

class Reddit
	def get_stories
		puts "Loading stories..."
		response = RestClient.get("http://reddit.com/top.json?limit=5")
		parsed_response = JSON.parse(response)
		stories = parsed_response["data"]["children"]

		stories.map do |story|
			story["data"]["title"]
		end
	end
end