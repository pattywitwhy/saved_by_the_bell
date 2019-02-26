Rails.application.routes.draw do
  namespace :api do
    get "/goals" => "goals#index"
    post "/goals" => "goals#create"
    get "/goals/:id" => "goals#show"
    patch "/goals/:id" => "goals#update"
    delete "/goals/:id" => "goals#destroy"

    get "/temptations" => "temptations#index"
    post "/temptations" => "temptations#create"
    get "/temptations/:id" => "temptations#show"
    patch "/temptations/:id" => "temptations#update"
    delete "/temptations/:id" => "temptations#destroy"

    post "/users" => "users#create"
  end
end
