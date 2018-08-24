require 'rubygems'
require 'httparty'
require 'json'

module API
    class Discover
        include HTTParty
        base_uri 'api.themoviedb.org/3/discover'
        
        def initialize
            @params = {
                :sort_by => 'popularity.desc',
                :page => '1'
            }
            @api_key = "?api_key=#{ENV["API_KEY"]}"
        end
        
        def tv
            self.class.get("/tv" + @api_key, sort_by: @params[:sort_by], page: @params[:page])
        end
    end
end


