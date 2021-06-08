class ApplicationController < ActionController::API
    helpers do
        def current_user
            #mock log in info
            User.find(session[:user_id])
        end

        def logged_in?
            !!current_user
        end
    end
end
