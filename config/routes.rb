Rails.application.routes.draw do
  
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  get 'website' => 'websites#index'
  get 'createlike' => 'websites#createlike'
  root 'home#tutorial'
  resources :users, :only => [:show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
