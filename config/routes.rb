Rails.application.routes.draw do
  mount RailsAdmin::Engine => "/database_viewer", as: "rails_admin"
  get "ping", to: "pings#show"

  unauthenticated do
    devise_scope :user do
      root to: "home/homes#new", as: :unauthenticated_user
    end
  end

  devise_for :users, skip: [:sessions, :passwords]
  devise_scope :user do
    root to: "user/top_page#show", as: :user_root
    get "/login" => "user/sessions#new", as: :user_session
    get "/login" => "user/sessions#new", as: :new_user_session
    post "/login" => "user/sessions#create", as: :user_login
    get "/logout" => "user/sessions#destroy", as: :user_logout
    post "/password" => "user/passwords#create", as: :user_password
    get "/password/new" => "user/passwords#new", as: :new_user_password
    get "/password/edit" => "user/passwords#new", as: :edit_user_password
  end

  scope module: :user, as: :user do
    resources :users
  end
end
