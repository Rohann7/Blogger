Rails.application.routes.draw do
  root 'main#index'
  
  get 'about_us', to: 'about#index', as: :about

  get 'sign_up', to: 'registrations#new'

  post 'sign_up', to: 'registrations#create'

  get 'sign_in', to: 'sessions#new'

  post 'sign_in', to: 'sessions#create'

  delete 'logout', to: 'sessions#delete'

  get 'password', to: 'passwords#edit', as: :edit_password

  patch 'password', to: 'passwords#update'

  get 'password/reset', to: 'password_reset#new'

  post 'password/reset', to: 'password_reset#create'

  get 'password/reset/edit', to: 'password_reset#edit'

  patch 'password/reset/edit', to: 'password_reset#update'

  get 'auth/twitter/callback', to: 'omniauth_callbacks#twitter'

end
