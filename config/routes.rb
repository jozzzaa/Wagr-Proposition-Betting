Rails.application.routes.draw do
  resources :bets
  resources :propositions
  resources :users
  resources :charges
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # getting the login form
  get '/session/new', to: 'session#new'
  # creating a session / logging in
  post '/session', to: 'session#create'
  # destroying a session / logging out
  delete '/session', to: 'session#destroy'

  # NEW CODE

  get '/referee', to: 'propositions#decide_referee'

  post '/referee', to: 'propositions#outcome_decided'

  get '/', to: 'application#index'

  get '/dashboard', to: 'propositions#index'

  post '/api/bets', to: 'api/bets#create'

  delete '/api/bets', to: 'api/bets#destroy'

  get 'categories', to: 'propositions#category_show'

  # NEW CODE

end
