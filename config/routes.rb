RiotRadioRails::Application.routes.draw do
  devise_for :administrators
  root :to => 'dashboard#show'
end
