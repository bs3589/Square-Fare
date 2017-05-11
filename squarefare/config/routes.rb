Rails.application.routes.draw do

  	devise_for :users
  	resources :businesses do
  		resources :posts, except: [:index, :show]
  	end
  	
	root 'businesses#index'

	match '/about', to: 'pages#about', via: :get
	match '/contact', to: 'pages#contact', via: :get

end
