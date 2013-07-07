RiotRadioRails::Application.routes.draw do
  resources :posts

  devise_for :administrators, path_prefix: "admin"

  resources :administrators

  root :to => 'dashboard#show'
end
