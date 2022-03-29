Rails.application.routes.draw do
  get "/sales" => "sales#index"
  get "/movies" => "movies#index"
  get "/reports" => "reports#index"
end
