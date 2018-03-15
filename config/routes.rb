Rails.application.routes.draw do
  get '/all_products' => 'products#show_the_product'
  get '/second' => 'products#seg_show_any'
end
