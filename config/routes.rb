Rails.application.routes.draw do
  get 'sessions/new'
  get '/blogs', to: 'blogs#index'
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]
  resources :favorites, only: [:create, :destroy]
  resources :blogs do
    collection do
      post :confirm
    end
  end
end
