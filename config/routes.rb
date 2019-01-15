# frozen_string_literal: true

Rails.application.routes.draw do
  resources :audios, except: %i[new edit]
  # RESTful routes
  resources :examples, except: %i[new edit]

  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'

  #Audios routes
  get '/audios' => 'audios#index'
  get '/audios' => 'audios#show'
  post '/audios' => 'audios#create'
  patch '/audios/:id' => 'audios#update'
  delete '/audios/:id' => 'audios#destroy'
end
