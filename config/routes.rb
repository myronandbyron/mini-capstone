Rails.application.routes.draw do
  
    post 'user_token' => 'user_token#create'

    namespace :v1 do

        post 'users' => 'users#create'

        get 'products' => 'products#index'
        post 'products' => 'products#create'
        get 'products/:id' => 'products#show'
        patch 'products/:id' => 'products#update'
        delete 'products/:id' => 'products#destroy'

        get 'all-orders' => 'orders#index'
        post 'orders' => 'orders#create'
        get 'orders/:id' => 'orders#show'
        patch 'orders/:id' => 'orders#update'
        delete 'orders/:id' => 'orders#destroy'

        post 'carted_products' => 'carted_products#create'
        get 'all-carted_products' => 'carted_products#index'
    end
end
