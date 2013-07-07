RiotRadioRails::Application.routes.draw do
  devise_for :administrators, path_prefix: "admin"

  resources :administrators

  root :to => 'dashboard#show'
end
