Rails.application.routes.draw do
  resources :shows, only: [:show]
  resources :playlists
  resources :playlist_songs, only: [:create, :destroy]
  # resources :songs
  resources :artists, only: [:show, :index]
  resources :users

  root "application#welcome"

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
  #post '/delete_song' => 'playlist_songs#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
