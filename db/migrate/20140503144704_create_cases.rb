class CreateCases < ActiveRecord::Migration
  def change
    create_table :cases do |t|
      t.integer :case_identifier, null:false
      t.text :notes, null:false
      t.integer :timmer, null:false, default:5
      t.integer :person_id, null:false
      t.integer :user_id, null:false
      t.boolean :active, null:false, default:true

      t.timestamps
    end
  end
end
