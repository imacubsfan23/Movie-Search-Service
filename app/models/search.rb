class Search < Api
    include HTTParty
    base_uri 'api.themoviedb.org/3/search'
    
    def initialize
        @options = {}
        @api_key = "?api_key=#{ENV["API_KEY"]}"
    end
    
    def tv(query="The Show")
        @options[:query] = query.to_s
        self.class.get("/tv" + @api_key, query: @options)
    end
    
    def movie(query="The Movie")
        @options[:query] = query.to_s
        self.class.get("/movie" + @api_key, query: @options)
    end
end