Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  get 'pages/home'
  get 'dashboard', to: 'pages#dashboard', as: :dashboard
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :activities, only: [:index, :show, :new, :create]
  resources :profiles, only: [:show, :edit, :update, :destroy]
   resources :chat_rooms, only: [ :show ] do
    resources :messages, only: [ :create ]
  end
end
