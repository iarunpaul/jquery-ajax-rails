Rails.application.routes.draw do

  resources :products do
  	resources :reviews, only: [:create]
  end
  get '/', to: 'products#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
