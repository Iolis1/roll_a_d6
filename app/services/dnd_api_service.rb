# app/services/dnd_api_service.rb
require 'httparty'

class DndApiService
  include HTTParty
  base_uri 'https://www.dnd5eapi.co/api'

  def self.fetch(endpoint)
    response = get("/#{endpoint}")
    
    if response.success?
      response.parsed_response
    else
      raise "Error fetching data from 5e-bits API: #{response.message}"
    end
  end
end
