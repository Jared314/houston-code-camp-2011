class Speaker < ActiveRecord::Base
  validates_presence_of :name, :bio, :email
  has_many :sessions

  def to_param
    "#{id}-#{name}".parameterize
  end
end
