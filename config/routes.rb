Rails.application.routes.draw do
  root 'home#top'

  get 'admins/admin_setting/:id', to: 'admins#admin_setting'
  get 'admins/members', to: 'admins#member_index'
  get 'admins/member_setting', to: 'admins#member_setting'

  resources :shifts, except: [:show]
  
  resources :relationships, only: [:create, :destroy]
  resources :serches, only: [:index]

  devise_for :users, controllers: {
    sessions:      'users/sessions',
    passwords:     'users/passwords',
    registrations: 'users/registrations'
  }
end
