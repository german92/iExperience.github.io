require_relative 'petition'
require_relative 'reddit'

# ---------
# VERSION 1
# ---------

petitions = Petition.new.get_petitions

puts

puts "======================="
puts "Today's Petitions:"
puts "-----------------------"

petitions.each_with_index do |petition, index|
	puts "#{index+1}. #{petition}"
end

puts

stories = Reddit.new.get_stories

puts

puts "======================="
puts "Today's Stories:"
puts "-----------------------"

stories.each_with_index do |story, index|
	puts "#{index+1}. #{story}"
end

# ---------
# VERSION 2
# ---------

def print_items(items, title)
	puts

	puts "======================="
	puts "Today's #{title}:"
	puts "-----------------------"

	items.each_with_index do |item, index|
		puts "#{index+1}. #{item}"
	end

	puts
end

print_items(Petition.new.get_petitions, "Petitions")
print_items(Reddit.new.get_stories, "Stories")