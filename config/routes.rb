Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  get 'pages/home'
  get '/tagged', to: "activities#tagged", as: :tagged
  get 'dashboard', to: 'pages#dashboard', as: :dashboard
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :activities, only: [:index, :show, :new, :create] do
    resources :bookmarks, only: [:create]
  end
  resources :profiles, only: [:show, :edit, :update, :destroy]

  resources :bookmarks, only: [:destroy]
end
