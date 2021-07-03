Rails.application.routes.draw do

  resources :managements 
  resources :shifts, except: [:show]

  devise_for :admins, controllers: {
    sessions:      'admins/sessions',
    passwords:     'admins/passwords',
    registrations: 'admins/registrations'
  }

  devise_for :users, controllers: {
    sessions:      'users/sessions',
    passwords:     'users/passwords',
    registrations: 'users/registrations'
  }

  root 'home#top'
  get 'regestration_session' ,to: 'home#registration_select'
  get 'session_select' ,to: 'home#session_select'
end
