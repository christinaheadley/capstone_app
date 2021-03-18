Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  namespace :api do
    get "/posts" => "posts#index"
    post "/posts" => "posts#create"
    get "/posts/:id" => "posts#show"
    patch "/posts/:id" => "posts#update"
    delete "/posts/:id" => "posts#destroy"
    post "/posts/:id/clap" => "posts#clap"

    post "/sessions" => "sessions#create" 
    post "/users" => "users#create"
    get "/users/:id" => "users#show"
    patch "/users/:id" => "users#update"
    delete "/users/:id" => "users#destroy"

    # get "/comments/:id" => "comments#show"
    post "/comments" => "comments#create"
    patch "/comments/:id" => "comments#update"
    delete "/comments/:id" => "comments#destroy"

    get "/tags" => "tags#index"
    get "/gifs" => "gifs#index"
    get "/gifs/search" => "gifs#show"

   
  end
end
