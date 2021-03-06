# frozen_string_literal: true

Rails.application.routes.draw do
  resources :players, except: %i[new edit]
  resources :teams, except: %i[new edit]
  # RESTful routes
  resources :examples, except: %i[new edit]
  resources :users, except: %i[new edit]

  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'

  # New routes to be add below...
  # update team...
end
