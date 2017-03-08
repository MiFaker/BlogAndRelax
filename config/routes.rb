Rails.application.routes.draw do
  mount RailsAdmin::Engine => "/database_viewer", as: "rails_admin"
  get "ping", to: "pings#show"

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
    # post "/sign_up" => "user/registrations#create", as: :user_registration
    # get "/sign_up/new" => "user/registrations#new", as: :new_user_registration
    # get "/sign_up/edit" => "user/registrations#new", as: :edit_user_registration
  end

  scope module: :user, as: :user do
    resources :users
  end

  unauthenticated do
    devise_scope :user do
      root to: "user/sessions#new", as: :unauthenticated_user
    end
  end
end
