Rails.application.routes.draw do
  namespace :api do 
    namespace :v1 do 
      get '/companies', to: 'companies#index'
      resource :users, only: [:create, :update, :destroy]
      resource :favorites, only: [:create, :destroy]
      get '/companies/:ticker', to: 'companies#fins_by_ticker'
      post '/login', to: 'users#login'
      post '/logout', to: 'users#logout'
    end 
  end 
end
