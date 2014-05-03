class CreateClues < ActiveRecord::Migration
  def change
    create_table :clues do |t|
      t.text :info, null:false

      t.timestamps
    end
  end
end
