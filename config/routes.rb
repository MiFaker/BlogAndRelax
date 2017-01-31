Rails.application.routes.draw do
  mount RailsAdmin::Engine => "/database_viewer", as: "rails_admin"
  get "ping", to: "pings#show"
  devise_for :admins, controllers: {sessions: "admin/sessions"}

  devise_scope :admin do
    get "admin/login", to: "admin/sessions#new"
    get "admin/logout", to: "admin/sessions#destroy"
  end

  namespace :admin do
    root to: "top_page#show"
  end
end
