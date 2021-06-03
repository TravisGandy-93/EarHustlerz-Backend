class ApplicationController < ActionController::API
    helpers do
        def current_user
            #mock log in info
            User.first
        end

        def logged_in?
            !!current_user
        end
    end
end
