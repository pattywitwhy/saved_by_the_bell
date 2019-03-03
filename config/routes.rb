Rails.application.routes.draw do
  namespace :api do

    get "/temptations" => "temptations#index"
    post "/temptations" => "temptations#create"
    get "/temptations/:id" => "temptations#show"
    patch "/temptations/:id" => "temptations#update"
    delete "/temptations/:id" => "temptations#destroy"

    post '/users' => 'users#create'
    get '/users/:id' => 'users#show'
    patch "/users/:id" => "users#update"

    post '/sessions' => 'sessions#create'
  end
end
