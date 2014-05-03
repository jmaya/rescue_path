class CreateClues < ActiveRecord::Migration
  def change
    create_table :clues do |t|
      t.text :info, null:false
      t.integer :user_id, null:false
      t.integer :case_id, null:false
      t.timestamps
    end
  end
end
