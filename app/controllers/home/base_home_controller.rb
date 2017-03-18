class Home::BaseHomeController < ActionController::Base
  protect_from_forgery with: :exception
  layout "home/base"
end
