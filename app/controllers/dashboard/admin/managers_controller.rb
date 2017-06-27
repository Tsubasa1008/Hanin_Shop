class Dashboard::Admin::ManagersController < Dashboard::Admin::AdminController
  before_action :set_manager, only: [:edit, :update]

  def edit
  end

  def update
    respond_to do |format|
      if @manager.update(manager_params)
        format.html { redirect_to edit_dashboard_admin_manager_path(@manager), notice: "個人資料修改成功。"}
      else
        format.html { redirect_to edit_dashboard_admin_manager_path(@manager), notice: @manager.errors }
      end
    end
  end

  def check_manager_email
    if Manager.where(email: params[:email])
      render json: { reslut: "false" }
    else
      render json: { result: "true" }
    end
  end

  private
    def set_manager
      @manager = Manager.find(params[:id])
    end

    def manager_params
      params.require(:manager).permit(:email, :password, :name)
    end
end