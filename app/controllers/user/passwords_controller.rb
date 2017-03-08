class User::PasswordsController < Devise::PasswordsController
  def new
    self.resource = resource_class.new
  end

  def create
    self.resource = resource_class
      .send_reset_password_instructions(resource_params)
    yield resource if block_given?

    if resource.errors.present?
      respond_with(resource)
    else
      respond_with({}, location: after_send_reset_password_url)
      set_flash_message! :notice, :send_instructions
    end
  end

  protected
  def after_send_reset_password_url
    new_user_session_path if is_navigational_format?
  end
end
