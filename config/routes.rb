Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  namespace :api do
    get "/posts" => "posts#index"
    post "/posts" => "posts#create"
    get "/posts/:id" => "posts#show"
    patch "/posts/:id" => "posts#update"
    delete "/posts/:id" => "posts#destroy"

    post "/sessions" => "sessions#create" 
    post "/users" => "users#create"
    get "/users/:id" => "users#show"
    
    get "/comments" => "comments#index"
    post "/comments" => "comments#create"
    get "/comments/:id" => "comments#show"
    patch "/comments/:id" => "comments#update"
    delete "/comments/:id" => "comments#destroy"

    get "/tags" => "tags#index"
  end
end
