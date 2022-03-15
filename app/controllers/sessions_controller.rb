class SessionsController < ApplicationController
  def index
  end
  
  def new
  end

  def create
    user = User.find_by(nickname: params[:session][:nickname])
    if user & user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    @current_user = nil
    redirect_to root_path
  end
end
