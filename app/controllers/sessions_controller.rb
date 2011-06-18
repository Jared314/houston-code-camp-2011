class SessionsController < ApplicationController
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
   
   
   def index
     @sessions = Session.all
   end
end
