class User::SessionsController < Devise::SessionsController
  protected
  def after_sign_in_path_for _resource
    current_user.create_action_log! current_user,
      Settings.actions.user.login, request.env["HTTP_USER_AGENT"]
    user_root_path
  end

  def after_sign_out_path_for _resource
    user_login_path
  end
end
