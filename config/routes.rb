RiotRadioRails::Application.routes.draw do

  devise_for :administrators, path_prefix: "admin"

  resources :administrators

  namespace :admin do
    resources :posts
  end  

  root :to => 'dashboard#show'
end
