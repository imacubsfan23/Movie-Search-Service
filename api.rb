require './search'

search = API::Search.new

results = search.tv('Spongebob')
results["results"].each do |show|
    puts "Show ##{show["id"]}: #{show["name"]}"
end

results = search.movie('Spongebob')
results["results"].each do |movie|
    puts "Movie ##{movie["id"]}: #{movie["title"]}"
end

