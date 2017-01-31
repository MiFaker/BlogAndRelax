class Admin::BaseAdminController < ActionController::Base
  before_action :authenticate_admin!
  protect_from_forgery

  layout "admin/base"
end
