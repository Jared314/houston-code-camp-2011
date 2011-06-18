class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.string :name
      t.text :abstract
      t.integer :speaker_id

      t.timestamps
    end
  end
end
