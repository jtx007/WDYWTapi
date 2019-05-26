Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :comments
      resources :shows
      resources :genres
      resources :users
      post '/auth/login', to: 'authentication#login'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
