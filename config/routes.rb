Rails.application.routes.draw do
  # get "pessoas" => "pessoas#index"
  resources :pessoas
  root to: "pessoas#index"
  resources :tipos
  resources :animals
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
