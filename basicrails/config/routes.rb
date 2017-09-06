Rails.application.routes.draw do
  get 'posts/index'

  get 'users/index'

  get 'home/index'

  root 'home#index'
  get    '/help',    to: 'home#help'
  get    '/about',   to: 'home#about'
  get    '/contact', to: 'static_pages#contact'
  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users
end
