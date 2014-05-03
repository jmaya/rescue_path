class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :first_name, null:false
      t.string :last_name, null:false
      t.string :age, null:false
      t.string :hair_color, null:false
      t.string :eye_color, null:false
      t.string :height, null:false
      t.string :weight, null:false
      t.string :race, null:false
      t.string :visual_characteristics
      t.string :sex, null:false
      t.text :last_seen_location, null:false
      t.date :last_seen_date, null:false
      t.text :notes
      t.string :build_type, null:false
      t.string :relationship_to_submitter

      t.timestamps
    end
  end
end
