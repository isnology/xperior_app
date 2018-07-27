class ApplicationController < ActionController::API
  include ::ActionController::Serialization

  attr_reader :current_user

  def logged_in?
    current_user != nil
  end
  
  protected
  
    def authenticate_user!
      @current_user ||= construct_current_user
      unless @current_user
        render json: {message: "Not authenticated", data: nil, result_code: "unauthenticated"}, status: 401
      end
    end
    
    def json_web_token
      @jwt ||= JsonWebToken.new
    end
  
    def extract_token
      if request.headers['Authorization'].present?
        return request.headers['Authorization'].split(' ').last
      else
        nil
      end
    end
  
    def construct_current_user
      if temp = json_web_token.decode(extract_token)
        temp[:id] = temp[:sub]
        OpenStruct.new(temp)
      else
        nil
      end
    end
  
end
