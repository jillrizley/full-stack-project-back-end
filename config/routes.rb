# frozen_string_literal: true
Rails.application.routes.draw do
  resources :shows
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  # get '/shows' => 'shows#index'
  # get 'shows/:id' => 'shows#show'
  # delete '/shows/:id' 'articles#destroy'
  resources :users, only: [:index, :show]
  resources :shows, except: [:new, :edit]
end
