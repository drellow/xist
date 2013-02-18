Xists::Application.routes.draw do
  resources :sessions
  resources :xists do
    resource :favorite, :only => [:create, :destroy]
  end
  resources :favorites, :only => [:index]


  root to: "xists#index"

  match "login" => "sessions#new"
  match "logout" => "sessions#destroy"
end
