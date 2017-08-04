# frozen_string_literal: true
Rails.application.routes.draw do
  resources :shows
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  patch '/attended_show/:show_id' => 'users#attended_show'
  resources :users, only: [:index, :show]
  resources :shows, except: [:new, :edit]
  resources :shows_users, except: [:new, :edit]
  delete '/remove_show/:show_id' => 'users#remove_show'
end
