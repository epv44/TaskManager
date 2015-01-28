Rails.application.routes.draw do
  resources :log_hours

  resources :profiles

  match "/tasks/:id/complete", to: "tasks#complete", via: [:get, :post]
  resources :tasks do
  	member do
  		post :complete
  	end
  end

  devise_for :users
  root 'static_pages#home'
  match '/about', to: 'static_pages#about', via: 'get'
  match '/log-hours', to: 'hours#log_hours', via: 'get'
  match '/admin', to: 'static_pages#admin', via: 'get'
  match '/about', to: 'static_pages#about', via: 'get'
end
