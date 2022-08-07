Rails.application.routes.draw do
  resources :movies
  resources :movie_genres
  resources :directors
  resources :artists
  resource :home, only: :index
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"

  get 'movies/index'
  get 'artists/index'
  get 'directors/index'
  get 'movie_genres/index'

  get "/artists/edit", to: "artists#edit"
  get "/artists/new", to: "artists#new"
  get "/directors/new", to: "directors#new"
  get "/movie_genres/new", to: "movie_genres#new"
  get "home/", to: "home#index"
  get "home/movies", to: "movies#index"
  get "home/artists", to: "artists#index"
  get "home/directors", to: "directors#index"
  get "home/movie_genres", to: "movie_genres#index"

  post "directors_dregistration", to: "dregistration#create"
  post "artists_aregistration", to: "aregistration#create"
  post "movie_genres_mgregistration", to: "mgregistration#create"

  delete "/artists/:id", to: "artists#destroy"
end
