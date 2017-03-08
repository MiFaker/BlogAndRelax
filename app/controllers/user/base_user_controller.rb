class User::BaseUserController < ActionController::Base
  before_action :authenticate_user!
  protect_from_forgery with: :exception

  layout "user/base"
end
