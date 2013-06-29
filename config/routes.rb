RiotRadioRails::Application.routes.draw do
  devise_for :administrators

  authenticated :administrators do
    root :to => 'dashboard#show', :as => :administrator_root
  end

  root :to => 'dashboard#show'
end
