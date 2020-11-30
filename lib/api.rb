require_relative '../config/environment'

class DND::API
    def initialize
        @url = 'https://www.dnd5eapi.co/api/'
    end

    def get_monsters
        uri = URI.parse(@url)
        response = Net::HTTP.get(uri)
        data = JSON.parse(response)
        binding.pry
    end
end

DND::API.new.get_monsters