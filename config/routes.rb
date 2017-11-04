Rails.application.routes.draw do
  devise_for :users
  resources :blogs

  get 'about', to: 'pages#about'
  get 'news', to: 'pages#news'
  get 'contact', to: 'pages#contact'
  get 'deals', to: 'pages#deals'

  root to: 'pages#home'
end
