class UserSessionsController < ApplicationController
  def new
    if Rails.env == "development" && params[:auto_login]
      session[:token] = User.first.token
      redirect_to root_path, :notice => "Auto logged in!"
      return
    end
    
    redirect_to '/auth/twitter'
  end

  def create
    auth = request.env['omniauth.auth']
    nick = auth['info']['nickname']
    user = User.where(:nickname => nick, :provider => 'twitter').first
    unless user
      render :file => "#{Rails.root}/public/401.html", :status => :unauthorized
      return
    end

    user.update_with_omni_auth!(auth)
    session[:token] = user.token
    redirect_to root_path, :notice => "Signed in as #{user.name}"
  end

  def failure
    redirect_to root_path, :error => "Authentication error: #{params[:message].humanize}"
  end

  def destroy
    session[:token] = nil
    redirect_to root_path, :notice => "Signed out"
  end
end
