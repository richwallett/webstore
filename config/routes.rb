Webstore::Application.routes.draw do
  root :to => "sessions#new"
  resources :sessions, only: [:create, :new] do
    collection do
      delete "destroy" #REV: hm... Multiple sessions?
    end
  end
  resources :users
  resources :products
  resources :carts, except: [:index, :show, :destroy] do
    collection do
      get "show" #REV: guess I need to read the controller to understand this
      delete "destroy"
    end
  end
  resources :orders
end
