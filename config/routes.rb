Rails.application.routes.draw do
  resources :line_items
  resources :carts
  devise_for :users
	root to: 'static_pages#homepage'
	get '/homepage', to: 'static_pages#homepage'
	get '/aboutus', to: 'static_pages#aboutus'
  get '/contactus', to: 'static_pages#contactus'
  get '/underconst', to: 'static_pages#under_const'

  get '/accessories', to: 'shop#accessories'
  get '/books', to: 'shop#books'
  get '/show', to: 'shop#show'
  get '/buyOffline', to: 'shop#buyOffline'

  resources :shop do 
    collection do 
    post :show
    end 
  end 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
