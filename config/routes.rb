Rails.application.routes.draw do

  devise_for :users
  resources :activities
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #custom routes 
  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  root to: 'pages#home'
end
