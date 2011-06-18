class SpeakersController < ApplicationController
  def index
    @speakers = Speaker.all
  end
  
  def new
    @speaker = Speaker.new
  end
  
  def create
    @speaker = Speaker.new(params[:speaker])
    if @speaker.save
      redirect_to speakers_path, :notice => "Speaker #{@speaker.name} created."
    else
      flash[:error] = "Bad stuff done happened."
      render :action => "new"
    end
  end
  
  def edit
    @speaker = Speaker.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    flash[:error] = "No speaker found with id #{params[:id]}"
    redirect_to speakers_path
  end
  
  def update
    @speaker = Speaker.find(params[:id])
    if @speaker.update_attributes(params[:speaker])
      flash[:notice] = "Your changes were saved"
      redirect_to speakers_path
    else
      flash[:error] = "Something went awry, old chap!"
      render :action => "edit"
    end
  end
  
  def destroy
    @speaker = Speaker.find(params[:id])
    @speaker.destroy
    flash[:notice] = "#{@speaker.name} was deleted"
    redirect_to speakers_path
  end
end
