class Discover < Api
    include HTTParty
    base_uri 'api.themoviedb.org/3/discover'
    
    def initialize
        @sort_by = '&popularity.desc'
        @page = '&page=1'
        @api_key = "?api_key=#{ENV["API_KEY"]}"
    end
    
    def tv
        self.class.get("/tv#{@api_key}#{@sort_by}#{@page}")
    end
    
    def movie
        self.class.get("/movie", api_key: @api_key, query: @options)
    end
end