Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "welcome#index"

  post '/login', to: 'sessions#create'
  get '/dashboard', to: 'dashboard#index'

  resources :courses, only: [:index] do
    resources :registrations, only: [:create]
  end

  resources :registrations, only: [:destroy]
end
