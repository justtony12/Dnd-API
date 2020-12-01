require_relative '../config/environment'

class DND::API

    def initialize
        @url = 'https://www.dnd5eapi.co/api/classes/'
    end

    def get_klass
        uri = URI.parse(@url)
        response = Net::HTTP.get(uri)
        data = JSON.parse(response)
        binding.pry
    end

    # def get_klass_data(url)
    #     uri = URI(url)
    #     response = Net::HTTP.get(uri)
    #     data = JSON.parse(response)
    #     binding.pry
    # end
end

DND::API.new.get_klass