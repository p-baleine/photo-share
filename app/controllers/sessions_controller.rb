class SessionsController < ApplicationController
  skip_before_filter :require_login
  layout false
  
  def new
    redirect_to photos_url if logged_in?
  end

  def create
    if user = User.authenticate(params[:email], params[:password])
      session[:user_id] = user.id
      redirect_to photos_path
    else
      flash.now[:error] = "Login fail"
      render new_session_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to :root
  end
end
