class Speaker < ActiveRecord::Base
  validates_presence_of :name, :bio, :email
  has_many :sessions
end
