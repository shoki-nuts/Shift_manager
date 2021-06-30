Rails.application.routes.draw do
  resources :shifts, except: [:show]
  devise_for :users

  root 'home#top'
end
