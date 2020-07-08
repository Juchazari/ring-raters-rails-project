class SessionsController < ApplicationController
  def new
    if current_user
      redirect_to root_path
    end
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_url
    else
      redirect_to login_path, alert: "Email or password is invalid"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end
end
