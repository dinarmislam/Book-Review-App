Rails.application.routes.draw do
  devise_for :admin_users, :skip => [:registrations]
  as :admin_user do
  get 'admin_users/edit' => 'devise/registrations#edit', :as => 'edit_admin_user_registration'
  put 'admin_users' => 'devise/registrations#update', :as => 'admin_user_registration'            
  end
  namespace :admin do
    resources :users
    resources :books
    resources :categories
	  resources :admin_users

    root to: "books#index"
  end

  devise_for :users
  resources :books do
    resources :reviews
  end

  root 'books#index'
  get '/mybooks', to: 'books#mybooks'
end
