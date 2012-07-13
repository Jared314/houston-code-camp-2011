class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :logged_in?, :current_user
  helper_method :looking_for_speakers?

  def logged_in?
    session[:token].present? && !current_user.nil?
  end

  def current_user
    User.where(:token => session[:token]).first
  end
  
  def require_user
    redirect_to root_path and return false unless logged_in?
  end

  def looking_for_speakers?
    true
  end
end
