class SessionSuggestionsController < ApplicationController

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

end