Rails.application.routes.draw do
  namespace :v1 do
    post '/user_token' => 'user_token#create'

    get '/all-products' => 'products#index'
    post '/product' => 'products#create'
    get '/products/:id' => 'products#show'
    patch 'products/:id' => 'products#update'
    delete 'products/:id' => 'products#destroy'



    post '/users' => 'users#create'
  end
end
