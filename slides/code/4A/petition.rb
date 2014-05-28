require 'rest-client'
require 'json'

class Petition
	def get_petitions
		puts "Loading petitions..."
		response = RestClient.get("https://api.whitehouse.gov/v1/petitions.json?limit=5")
		petitions = JSON.parse(response)["results"]
		petitions.map do |petition|
			petition["title"]
		end
	end
end