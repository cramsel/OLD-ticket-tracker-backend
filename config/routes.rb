Rails.application.routes.draw do
  get "/sales" => "sales#index"
  get "/movies" => "movies#index"
  get "/reports" => "reports#index"

  # get "/movies" => "movies#search"
  # #kept in for testing purposes

  post "/sales" => "sales#create"
  post "/reports" => "reports#create"
  post "/movies" => "movies#create"
end
