class Admin::SessionsController < Devise::SessionsController
  protected
  def after_sign_in_path_for _resource
    current_admin.create_action_log! current_admin,
      Settings.actions.admin.login, request.env["HTTP_USER_AGENT"]
    admin_root_path
  end

  def after_sign_out_path_for _resource
    admin_login_path
  end
end
