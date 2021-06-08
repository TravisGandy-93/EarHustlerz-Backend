class ApplicationController < ActionController::API
    include ::ActionController::Cookies
        def current_user
            #mock log in info
            User.find_by(id: session[:user_id])
        end

        def logged_in?
            !!current_user
        end
    
end
