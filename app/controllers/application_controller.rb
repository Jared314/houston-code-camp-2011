class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :logged_in?, :current_user

  def logged_in?
    return true if Rails.env == 'development' #PDS - I got lazy and didn't want to log into Twitter every time I restarted.
    session[:token].present? && !current_user.nil?
  end

  def current_user
    if Rails.env == 'development'
      user = User.new
      user.name = "developmentenvironmentonly"
      return user
    end
    User.where(:token => session[:token]).first
  end
  
  def require_user
    redirect_to root_path and return false unless logged_in?
  end
end
