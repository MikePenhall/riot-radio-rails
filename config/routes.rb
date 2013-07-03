RiotRadioRails::Application.routes.draw do
  devise_for :administrators

  resources :administrators

  root :to => 'dashboard#show'
end
