Rails.application.routes.draw do

  resources :activity_lists
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' } 
  resources :activities do
  
    get :only_user, on: :collection, as: :only_user
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #custom routes 
  get 'about-me', to: 'pages#about'
  #get 'contact', to: 'contact_us/contacts#new'
  root to: 'pages#home'
end
