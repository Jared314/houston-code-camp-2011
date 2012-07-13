class SessionSuggestion < ActiveRecord::Base
  attr_accessible :title, :bio, :abstract, :twitter, :email

  validates_presence_of :title
  validates_presence_of :bio
  validates_presence_of :abstract
  validates_presence_of :email
end
