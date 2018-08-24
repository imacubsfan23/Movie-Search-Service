require 'rubygems'
require 'activeresource'

class Api < ActiveResource::Base
    attr_accessor :api_key
    self.site = 'https://api.themoviedb.org/3'
    
    def initialize
        self.api_key = ENV["API_KEY"]
        super
    end
end