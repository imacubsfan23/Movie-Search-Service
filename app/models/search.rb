class Search < Api
    include HTTParty
    base_uri 'api.themoviedb.org/3/search'
    
    def initialize
        @options = {}
        @api_key = "?api_key=fb6a1d3f38c3d97f67df6d141f936f29"
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
