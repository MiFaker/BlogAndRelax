class User::UsersController < User::BaseUserController
  def index
    respond_to do |format|
      format.html
      format.json do
        @users = User.all.page(params[:page]).per params[:limit]
      end
    end
  end
end
