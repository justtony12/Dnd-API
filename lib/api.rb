require_relative '../config/environment'

class DND::API
    def initialize
        @url = 'https://www.dnd5eapi.co/api/monsters/'
    end

    def get_monsters
        uri = URI.parse(@url)
        response = Net::HTTP.get(uri)
        data = ap JSON.parse(response) #adding 'ap' to the begining of JSON uses awesome_print.
        binding.pry
    end
end

DND::API.new.get_monsters