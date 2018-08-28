class Search < Api
    include HTTParty
    base_uri 'api.themoviedb.org/3/search'
    
    def initialize
        @api_key = "?api_key=#{ENV["API_KEY"]}"
    end
    
    def make_request(query="The", mode="tv")
        @mode = mode
        @query = "&query=#{query}"
        self.class.get("/#{@mode}#{@api_key}#{@query}")
    end
end
