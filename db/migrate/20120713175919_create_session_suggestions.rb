class CreateSessionSuggestions < ActiveRecord::Migration
  def change
    create_table :session_suggestions do |t|
      t.string :title
      t.text :abstract
      t.text :bio
      t.string :twitter
      t.string :email
      
      t.timestamps
    end
  end
end
