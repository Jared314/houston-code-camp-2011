class AddNickAndTokenToUser < ActiveRecord::Migration
  def change
    add_column :users, :token, :string
    add_column :users, :nickname, :string
  end
end
