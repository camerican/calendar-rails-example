class SessionController < ApplicationController
  def create
    # accept data from the params hash
    @user = User.where(username: params[:username]).first
    if @user && @user.password == params[:password]
      session[:user_id] = @user.id
      flash[:notice] = "Welcome to our site!"
    else
      flash[:notice] = "Oops, your information didn't match"
    end
    redirect_to '/'
  end
  def destroy
    session.destroy
    flash[:notice] = "You are logged out"
    redirect_to '/'
  end
end
