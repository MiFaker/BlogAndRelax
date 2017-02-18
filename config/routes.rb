Rails.application.routes.draw do
  mount RailsAdmin::Engine => "/database_viewer", as: "rails_admin"
  get "ping", to: "pings#show"

  devise_for :admins, skip: [:sessions, :passwords]
  devise_scope :admin do
    root to: "admin/top_page#show", as: :admin_root
    get "/login" => "admin/sessions#new", as: :admin_session
    get "/login" => "admin/sessions#new", as: :new_admin_session
    post "/login" => "admin/sessions#create", as: :admin_login
    get "/logout" => "admin/sessions#destroy", as: :admin_logout
    post "/password" => "admin/passwords#create", as: :admin_password
    get "/password/new" => "admin/passwords#new", as: :new_admin_password
    get "/password/edit" => "admin/passwords#new", as: :edit_admin_password
  end

  unauthenticated do
    devise_scope :admin do
      root to: "admin/sessions#new", as: :unauthenticated_admin
    end
  end
end
