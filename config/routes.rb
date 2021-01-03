Rails.application.routes.draw do
  
    get '/reviews/:id/specifications', :to => 'reviews#specifications'
    get '/homepage', :to => 'reviews#recent'
  
    resources :reviews

    resources :articles

  end