Rails.application.routes.draw do
  namespace :api do 
    namespace :v1 do 
      resource :companies, only: [:index, :show]
      resource :users, only: [:create, :update, :destroy]
      resource :favorites, only: [:create, :destroy]
      post '/login', to: 'users#login'
      delete '/logout', to: 'users#logout'
    end 
  end 
end
