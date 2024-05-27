class ApplicationController < ActionController::API
    include ::ActionController::Cookies
    before_action :require_authentication
    helper_method :current_user

    protected

        def current_user
            #mock log in info
           @current_user ||= User.find_by(id: session[:user_id])
        end

        def require_authentication
            return if current_user

            raise "error: not authenticated" if current_user.nil?
            raise "error: not authorized"
        end

        def logged_in?
            !!@current_user
        end
    
end
