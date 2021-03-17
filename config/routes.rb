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
    patch "/users/:id" => "users#update"
    delete "/users/:id" => "users#destroy"

    # get "/comments/:id" => "comments#show"
    post "/comments" => "comments#create"
    patch "/comments/:id" => "comments#update"
    delete "/comments/:id" => "comments#destroy"

    get "/tags" => "tags#index"

    post "/claps/" => "claps#create"
    patch "/claps/:id" => "claps#update"

    # resources :posts do
    #   member do
    #     # post 'upvote'
    #     put "clap", to: "posts#upvote"
    #   end
    # end
  end
end
