Rails.application.routes.draw do
  resources :movies

  get '/movies', to: 'movies#index'
  post '/movies/dislike', to: 'movies#dislike'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
