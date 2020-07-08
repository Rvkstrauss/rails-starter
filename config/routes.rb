Rails.application.routes.draw do

  get '/users' => 'users#index'
  match '/users/new' => 'users#create', via: :post
  get 'users/:id' => 'users#show'
  root 'users#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
