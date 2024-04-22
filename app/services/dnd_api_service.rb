# app/services/dnd_api_service.rb
require 'httparty'

class DndApiService
  include HTTParty

  class TimeoutError < StandardError; end
  class NotFoundError < StandardError; end
  class ApiError < StandardError; end
  
  base_uri 'https://www.dnd5eapi.co/api'
  default_timeout 5  # sets a default timeout of 5 seconds

  def self.fetch(endpoint)
    response = get("/#{endpoint}")
    
    handle_response(response)
  rescue Net::ReadTimeout, Net::OpenTimeout
    # Handle timeouts specifically
    raise "Timeout error when fetching data from 5e-bits API"
  end

  private

  def self.handle_response(response)
    case response.code
    when 200
      response.parsed_response
    when 404
      raise "Resource not found at endpoint: #{response.request.path.to_s}"
    when 500...600
      raise "Server error at 5e-bits API: #{response.message}"
    else
      raise "Error fetching data from 5e-bits API: #{response.message}"
    end
  end
end
