class SessionSuggestion < ActiveRecord::Base
  attr_accessible :title, :bio, :abstract, :twitter, :email

  validates_presence_of :title
  validates_presence_of :bio
  validates_presence_of :abstract
  
  validates :email, :presence => true, 
              :length => {:minimum => 3, :maximum => 254},                    
              :format => {:with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i}       
end
