Rails.application.routes.draw do

  root 'home#top'
  get 'registration_select' ,to: 'home#registration_select'
  get 'session_select' ,to: 'home#session_select'

  get 'managements' , to: 'managements#top'
  get 'managements/users_index' , to: 'managements#users_index'
  get 'managements/shifts_index' , to: 'managements#shifts_index'
  get 'managements/setting' , to: 'managements#setting'

  resources :shifts, except: [:show]
  get 'shifts/admins_index' , to: 'shifts#admins_index'

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
end
