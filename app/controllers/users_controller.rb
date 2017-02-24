class UsersController < ApplicationController
  def index
    @current_user = session[:user_id] && User.find(session[:user_id])
    @users = User.all
  end
  def show
    @user = User.find(params[:id])
  end
  def edit
    @user = User.find(params[:id])
  end
  def create
    # create user...
    User.create(user_params)
    flash[:notice] = "Congrats on your new account"
    redirect_to users_path
  end
  def update
    @user = User.find(params[:id])
    if @user && @user.update(user_params)
      flash[:notice] = "Successful update!"
    else
      flash[:notice] = "Uh oh, we couldn't update the account."
    end
    redirect_to edit_user_path
  end

  private

  def user_params
    params.require(:user).permit(:name_first,:name_last,:username,:email)
  end

end
