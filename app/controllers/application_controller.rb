class ApplicationController < ActionController::Base
    before_action :authenticate_user!
  
    rescue_from DndApiService::TimeoutError, with: :handle_timeout
    rescue_from DndApiService::NotFoundError, with: :handle_not_found
    rescue_from DndApiService::ApiError, with: :handle_api_error
  
    private
  
    def handle_timeout
      render json: { error: "Request timed out." }, status: :request_timeout
    end
  
    def handle_not_found
      render json: { error: "Resource not found." }, status: :not_found
    end
  
    def handle_api_error
      render json: { error: "An error occurred with the API." }, status: :internal_server_error
    end
  end