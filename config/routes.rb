Rails.application.routes.draw do
  devise_for :admin_users, :skip => [:registrations]
  namespace :admin do
    resources :users
	  resources :books
	  resources :categories
    resources :admin_users

    root to: "books#index"
  end

  devise_for :users  
  resources :books
  root 'books#index'
  get '/mybooks', to: 'books#mybooks'
end
