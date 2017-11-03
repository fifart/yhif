Rails.application.routes.draw do
  resources 'contacts', only: [:new, :create], path_names: { new: '' }
  
  devise_for :users
  get 'pages/index'

  resources :albums
  resources :tracks
  
  root 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
