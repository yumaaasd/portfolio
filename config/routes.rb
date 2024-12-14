Rails.application.routes.draw do
  root 'home#index' 
  resources :translations, only: [:new, :create, :index, :show]
end
