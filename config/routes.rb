Rails.application.routes.draw do
  get '/' => 'products#index'
  get '/products' => 'products#index'

  get '/products/random' => 'products#random'

  get '/products/new' => 'products#new'  #this must come before wildcard :id
  post '/products' => 'products#create'

  get '/products/:id' => 'products#show'

  get '/products/:id/edit' => 'products#edit'
  patch '/products/:id' => 'products#update'

  delete '/products/:id' => 'products#destroy'
end
