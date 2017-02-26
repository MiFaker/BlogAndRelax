class Admin::AdminsController < Admin::BaseAdminController
  def index
    respond_to do |format|
      format.html
      format.json do
        @admins = Admin.all.page(params[:page]).per params[:limit]
      end
    end
  end
end
