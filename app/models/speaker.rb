class Speaker < ActiveRecord::Base
  validates_presence_of :name, :bio, :email
  has_many :sessions

  def has_twitter_handle?
    return self.twitter_handle != nil && self.twitter_handle.length > 0
  end

  def to_param
    "#{id}-#{name}".parameterize
  end
end

