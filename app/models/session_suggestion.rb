class SessionSuggestion < ActiveRecord::Base

  validates_presence_of :title
  validates_presence_of :bio
  validates_presence_of :abstract
  validates_presence_of :email
end
