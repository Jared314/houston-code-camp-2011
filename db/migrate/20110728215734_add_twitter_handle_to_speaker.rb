class AddTwitterHandleToSpeaker < ActiveRecord::Migration
  def change
    add_column :speakers, :twitter_handle, :string
  end
end
