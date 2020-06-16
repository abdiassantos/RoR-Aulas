Rails.application.routes.draw do
  devise_for :users
  resources :departamentos
  #get "produtos", to: "produtos#index"
  #get "produtos/new", to: "produtos#new"
  #post "produtos", to: "produtos#create"
  #delete "produtos/:id", to: "produtos#destroy", as: :produto


  get 'produtos/busca', to: "produtos#busca", as: :busca_produto

  resources :produtos, only: [:new, :create, :destroy, :edit, :update]

  root to: "produtos#index"
  #root to: "home#index"
  
end

