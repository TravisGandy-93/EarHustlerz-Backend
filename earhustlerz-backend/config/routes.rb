Rails.application.routes.draw do
  
  post "/api/v1/login", to: "api/v1/sessions#create"
  get "/api/v1/get_current_user", to: "api/v1/sessions#get_current_user"
  # earhustlerz.com/api/v1
 namespace :api do
   namespace :v1 do
    resources :users
    resources :albums
    resources :tracks
    resources :reviews
   end
 end 
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
