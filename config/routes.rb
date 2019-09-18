Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  get "/products" => "products#index"
  # get "/products/new" => "products#new"
  get "/products/:id" => "products#show"
  get "/products/new" => "products#new"
  post "/products" => "products#create"

  get "/products/:id/edit" => "products#edit"
  patch "/products/:id" => "products#update"



  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/allproducts" => "products#all_products_action"
  #   get "/product" => "products#product_action"

  namespace :api do
    get "/products" => "products#index"
    get "/products/:id" => "products#show"
    post "/products/" => "products#create"
    patch "/products/:id" => "products#update"
    delete "/products/:id" => "products#destroy"
    post "/users" => "users#create"
    post "/sessions" => "sessions#create"
    post "/orders" => "orders#create"
    get "/orders" => "orders#index"
    post "/carted_products" => "carted_products#create"
  end
end

