require 'rubygems'
require 'httparty'
require 'json'

module API
    class Discover
        include HTTParty
        base_uri 'api.themoviedb.org/3/discover'
        
        def initialize
            @options = {
                :sort_by => 'popularity.desc',
                :page => '1'
            }
            @api_key = "?api_key=#{ENV["API_KEY"]}"
        end
        
        def tv
            self.class.get("/tv" + @api_key, sort_by: @options[:sort_by], page: @options[:page])
        end
        
        def movie
            self.class.get("/movie" + @api_key, query: @options)
        end
    end
end


