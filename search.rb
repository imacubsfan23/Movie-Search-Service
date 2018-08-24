require 'rubygems'
require 'httparty'
require 'json'

module API
    class Search
        include HTTParty
        base_uri 'api.themoviedb.org/3/search'
        
        def initialize
            @options = {}
            @api_key = "?api_key=#{env[API_KEY]}"
        end
        
        def tv(query)
            @options[:query] = query
            self.class.get("/tv" + @api_key, query: @options)
        end
        
        def movie(query)
            @options[:query] = query
            self.class.get("/movie" + @api_key, query: @options)
        end
    end
end
