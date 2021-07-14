Rails.application.routes.draw do

  root 'home#top'

  get 'managements' , to: 'managements#top'
  get 'managements/users_index' , to: 'managements#users_index'
  get 'managements/shifts_index' , to: 'managements#shifts_index'
  get 'managements/setting' , to: 'managements#setting'

  resources :shifts, except: [:show]

  devise_for :users, controllers: {
    sessions:      'users/sessions',
    passwords:     'users/passwords',
    registrations: 'users/registrations'
  }
end
