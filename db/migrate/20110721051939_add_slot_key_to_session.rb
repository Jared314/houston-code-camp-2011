class AddSlotKeyToSession < ActiveRecord::Migration
  def change
    add_column :sessions, :slot_key, :string
  end
end
