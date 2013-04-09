Webstore::Application.routes.draw do
  root :to => "sessions#new"
  resources :sessions, only: [:create, :new] do
    collection do
      delete "destroy"
    end
  end
  resources :users
  resources :products
  resources :carts, except: [:index, :show, :destroy] do
    collection do
      get "show"
      delete "destroy"
    end
  end
  resources :orders
end
