# This file handles _conference_ sessions, not _user_ sessions. Make sure you 
# understand the difference!  User sessions are handled in user_sessions_controller.rb

class SessionsController < ApplicationController
  before_filter :require_user, :except => [:index, :show]

  def new
    @session = Session.new
  end

  def create
   @session = Session.new(params[:session])
   if @session.save
     redirect_to sessions_path, :notice => "Session #{@session.name} created."
   else
     flash[:error] = "Bad stuff done happened."
     render :action => "new"
   end
  end

  def edit
    @session = Session.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    flash[:error] = "No session found with id #{params[:id]}."
    redirect_to sessions_path
  end

  def update
    @session = Session.find(params[:id])
    if @session.update_attributes(params[:session])
      redirect_to sessions_path, :notice => "Session #{@session.name} updated."
    else
      flash[:error] = "Bad stuff done happened."
      render :action => "edit"
    end
  end

  def assign_slot
    id = params[:id]
    @session = Session.find(id)
    @session.slot_key = params[:key]
    if @session.save
      render :json => { success:'true', message:'success'}
    else
      render :json => { success:'false', message:"Error saving session #{id}."}
    end
  rescue ActiveRecord::RecordNotFound
      render :json => { success:'false', message:"Could not find session #{id}."}
  end

  def index
    @sessions = Session.all
  end

  def destroy
    @session = Session.find(params[:id])
    @session.destroy
    flash[:notice] = "#{@session.name} was deleted"
    redirect_to sessions_path
  end

  def show
    @session = Session.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    flash[:error] = "No session found with id #{params[:id]}."
    redirect_to sessions_path
  end
end

