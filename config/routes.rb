# frozen_string_literal: true

Rails.application.routes.draw do
  resources :houses, except: %i[new edit]
  # added 'except: %i[new edit]' in routes.rb
  resources :appliances, except: %i[new edit]
  # added 'except: %i[new edit]' in routes.rb
  # RESTful routes
  resources :examples, except: %i[new edit]

  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
end
