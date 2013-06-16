class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :require_login

  def require_login
    unless logged_in?
      flash[:error] = "You are not logged in."
      redirect_to root_url
    end
  end

  def current_user
    @current_user ||= session[:user_id] && User.find_by_id(session[:user_id])
  end

  def logged_in? 
    !!current_user
  end
end
