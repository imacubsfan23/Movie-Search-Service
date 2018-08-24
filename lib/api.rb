require_relative 'api/search'
require_relative 'api/discover'

##SEARCH

search = API::Search.new

results = search.tv('Spongebob')

results["results"].each do |show|
    puts "Show ##{show["id"]}: #{show["name"]}"
end

results = search.movie('Spongebob')
results["results"].each do |movie|
    puts "Movie ##{movie["id"]}: #{movie["title"]}"
end

##DISCOVER

popular_shows = API::Discover.new.tv["results"]

popular_shows.each do |show|
    puts "#{show["name"]}: #{show["poster_path"]}"
end

