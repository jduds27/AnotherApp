Rails.application.routes.draw do
  devise_for :users, path: '', path_names: {sign_in: 'login', sign_out: 'logout', sign_up: 'register'}
  resources :blogs

  get 'about', to: 'pages#about'
  get 'news', to: 'pages#news'
  get 'contact', to: 'pages#contact'
  get 'deals', to: 'pages#deals'

  root to: 'pages#home'
end
