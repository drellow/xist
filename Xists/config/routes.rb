Xists::Application.routes.draw do
  resources :sessions
  resources :xists do
    resource :favorite, :only => [:create, :destroy]
    # resources :tags, :only => [:create, :destroy]
    # resources :taggings, :only => [:create, :destroy]
  end
  resources :favorites, :only => [:index]
  resources :tags, :only => [:index]

  root to: "xists#index"

  match "login" => "sessions#new"
  match "logout" => "sessions#destroy"
end
