RiotRadioRails::Application.routes.draw do

  devise_for :administrators, path_prefix: "admin"

  get '/admin', to: 'dashboard#show', as: 'admin_root'

  resources :administrators
  
  resources :posts do
    post :save_and_publish, on: :collection
  end  

  namespace :admin do
    resources :posts
  end  

  root :to => 'posts#index'
end
