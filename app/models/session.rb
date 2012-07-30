class Session < ActiveRecord::Base
  belongs_to :speaker
  validates :slot_key, :length => { :minimum => 1 }, :if => lambda { |s| s.slot_key.present? }

  scope :unassigned, where("slot_key = '' OR slot_key IS NULL")
  scope :assigned, where("slot_key != '' AND slot_key IS NOT NULL")
end
