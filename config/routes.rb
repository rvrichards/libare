Rails.application.routes.draw do
  resources :libations
  devise_for :users
  root :to => "static_pages#home"

  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
end
