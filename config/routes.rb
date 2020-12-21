Rails.application.routes.draw do
  
    get '/reviews/:id/specifications', :to => 'reviews#specifications'
  
    resources :reviews
  end