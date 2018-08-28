class Discover < Api
    include HTTParty
    base_uri 'api.themoviedb.org/3/discover'
    
    def initialize
        @api_key = "?api_key=#{ENV["API_KEY"]}"
    end
    
    def make_request(page=1, mode="tv")
        @mode = mode
        @page = "&page=#{page}"
        self.class.get("/#{@mode}#{@api_key}#{@page}")
    end
end
