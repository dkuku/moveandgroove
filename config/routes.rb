Rails.application.routes.draw do

  resources :activity_lists
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' } 
  resources :activities
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #custom routes 
  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  root to: 'pages#home'
end
