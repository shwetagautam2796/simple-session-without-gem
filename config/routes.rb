Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'items#home'
  get '/signup', to: 'users#new'
  resources :users do 
  	# resources :items, :except => [:index]
  	collection do 
	  	get '/item', to: 'items#new'
	  	# match '/item', to: 'items#new', via: [:get, :post]
	  	post '/create_item', to: 'items#create_item'
	  	get '/item_show', to: 'items#show'
  	end
  end

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
end
