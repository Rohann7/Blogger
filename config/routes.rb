Rails.application.routes.draw do
  root 'main#index'
  get 'about_us', to: 'about#index', as: :about
end
