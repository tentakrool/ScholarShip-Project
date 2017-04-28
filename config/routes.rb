Rails.application.routes.draw do
  devise_for :users
	root to: 'static_pages#homepage'
	get '/homepage', to: 'static_pages#homepage'
	get '/aboutus', to: 'static_pages#aboutus'
   	get '/contactus', to: 'static_pages#contactus'

   	get '/accessories', to: 'shop#accessories'
   	get '/books', to: 'shop#books'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
