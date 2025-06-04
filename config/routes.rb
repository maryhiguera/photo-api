Rails.application.routes.draw do
  get "/photos" => "photos#index"
  post "/photos" => "photos#create"
  get "/photos/:id" => "photos#show"
  patch "/photos/:id" => "photos#update"
  delete "/photos/:id" => "photos#destroy"

  get "/clients" => "clients#index"
  post "/clients" => "clients#create"
  get "/clients/:id" => "clients#show"
  patch "/clients/:id" => "clients#update"
  delete "/clients/:id" => "clients#destroy"
end
