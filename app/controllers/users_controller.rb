class UsersController < ApplicationController
  
  before_filter :current_user
  before_filter :is_admin, only: [:index]

  def index
    
    @users = User.all
  end
  def show
    @user = User.find(params[:id])
  end
  def edit
    @user = User.find(params[:id])
  end
  def new
    @user = User.new
  end
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Congrats on your new account"
      redirect_to users_path
    else
      flash[:notice] = "Ooops, we have a problem"
      render :new
    end
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

  def is_admin
    redirect_to '/' if !@current_user || !@current_user.admin
  end

  private
  def current_user
    @current_user = session[:user_id] && User.find(session[:user_id])
  end

  def user_params
    params.require(:user).permit(:name_first,:name_last,:username,:email,:password)
  end

end
