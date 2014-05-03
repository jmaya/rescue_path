class CreateCases < ActiveRecord::Migration
  def change
    create_table :cases do |t|
      t.integer :case_identifier, null:false
      t.integer :timmer, null:false, default:5
      t.integer :person_id, null:false

      t.timestamps
    end
  end
end
