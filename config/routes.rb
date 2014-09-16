Rails.application.routes.draw do

  resources :tasks

  devise_for :users
  root 'static_pages#home'
  match '/about', to: 'static_pages#about', via: 'get'
  #match '/details', to: 'static_pages#taskdetails', via: 'put'
end
