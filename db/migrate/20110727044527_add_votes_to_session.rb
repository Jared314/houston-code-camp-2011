class AddVotesToSession < ActiveRecord::Migration
  def change
    add_column :sessions, :votes, :integer
  end
end
