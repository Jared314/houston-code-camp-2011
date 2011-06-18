class CreateSpeakers < ActiveRecord::Migration
  def change
    create_table :speakers do |t|
      t.string :name
      t.text :bio
      t.string :email

      t.timestamps
    end
  end
end
