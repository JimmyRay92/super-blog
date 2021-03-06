Rails.application.routes.draw do
  devise_for :users
  root 'static_public#landing_page'
  get 'privacy', to: 'static_public#privacy'
  get 'terms', to: 'static_public#terms'
  
  resources :users, only: %i[index show]
end
