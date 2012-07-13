require 'spec_helper'

describe "Looking for speakers" do
  describe "submit a session" do
    before(:each) do
      visit root_path
      click_link "Submit a session"

      fill_in "session_suggestion_title", :with => "Haml is better than ERB"
      fill_in "session_suggestion_abstract", :with => "I will describe all the ways haml is better than ERB. It is a rather lengthy talk but full of awesomeness."
      fill_in "session_suggestion_bio", :with => "The Chosen One"
      fill_in "session_suggestion_twitter", :with => "erb_blows"
      fill_in "session_suggestion_email", :with => "chosenone@haml.com"
      click_button "Submit"

      @session_suggestion = SessionSuggestion.where(:title => "Haml is better than ERB").first
    end
    it "should add my session suggestion" do
      @session_suggestion.should_not be_nil
    end
  end
end