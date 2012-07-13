class SessionSuggestionsController < ApplicationController
  before_filter :authenticate, :only => [:index]

  def index
    @session_suggestions = SessionSuggestion.all
  end

  def new
    @session_suggestion = SessionSuggestion.new
  end

  def create
    @session_suggestion = SessionSuggestion.new(params[:session_suggestion])

    if @session_suggestion.save
      flash[:success] = "Thanks for submitting you session!"
      redirect_to root_path
    else
      flash[:error] = "Oops! Something was missing."
      render :new
    end
  end

  protected

  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      username == "admin" && password == "starpizza"
    end
  end
end