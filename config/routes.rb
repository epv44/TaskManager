Rails.application.routes.draw do
  match "/tasks/:id/complete", to: "tasks#complete", via: [:get, :post]
  resources :tasks do
  	member do
  		post :complete
  	end
  end

  devise_for :users
  root 'static_pages#home'
  match '/about', to: 'static_pages#about', via: 'get'
  #match '/details', to: 'static_pages#taskdetails', via: 'put'
end
