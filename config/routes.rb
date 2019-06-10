Rails.application.routes.draw do
  devise_for :users
  resources :boardgames
  post "/boardgames/import", to: "boardgames#bgg_import"
  root 'boardgames#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
