Rails.application.routes.draw do
  
  get "/api/v1/login", to: "sessions#create"
  
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
