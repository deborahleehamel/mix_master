Rails.application.routes.draw do
  root to: 'artists#index'

  resources :artists do
    resources :songs, only: [:new, :create, :index]
  end

  resources :songs, only: [:show, :edit, :update, :index, :destroy]
  resources :playlists, only: [:index, :new, :create, :show, :edit, :update]
  get '/auth/spotify/callback', to: 'sessions#create'
end
