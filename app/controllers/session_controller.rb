class SessionController < ApplicationController
  def new
  end

  def create
    @user = User.find_by :name => params[:name]
    if @user.present?
      session[:user_id] = @user.id
      redirect_to flights_path
    else
      flash[:error] = "User does not exist"
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path
  end
end
