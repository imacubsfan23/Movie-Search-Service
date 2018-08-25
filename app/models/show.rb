class Show < Api
    include HTTParty
    base_uri 'api.themoviedb.org/3/tv'
    
    def initialize
        @api_key = "?api_key=#{ENV["API_KEY"]}"
    end
    
    def tv(id=nil)
        @id = id
        self.class.get("/#{@id}#{@api_key}")
    end
end
