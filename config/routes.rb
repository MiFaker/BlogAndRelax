Rails.application.routes.draw do
  devise_for :admins, controller: {sesssions: "admin/sesssions"}

  devise_scope :admin do
    get "admin/login", to: "admin/sessions#new"
    get "admin/logout", to: "admin/sessions#destroy"
  end

  namespace :admin do
    root to: "top_page#show"
  end
end
