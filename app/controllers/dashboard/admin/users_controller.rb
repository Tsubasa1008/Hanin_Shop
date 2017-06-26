class Dashboard::Admin::UsersController < Dashboard::Admin::AdminController
  def index 
    @users = User.all
  end
  
  def show
    @user = User.find(params[:id])
  end

  def edit
  end

  def update
  end
end