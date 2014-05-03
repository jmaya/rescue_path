require 'csv'
require 'awesome_print'

task :import => :environment do
  csv_file = File.join(Rails.root, "/spec/fixtures/link.csv")
  CSV.foreach(csv_file,:headers => true ) do |row|
    location, notes = row["NAME"].split("  ")

    p = Person.new
    p.first_name = row["FIRST_NAME"]
    p.last_name = row["LAST_NAME"]
    p.age = row["AGE_NOW"]
    p.hair_color = "Black"
    p.image_url = row["IMAGELINK"]
    p.eye_color= "Brown"
    p.height = row["HEIGHT"]
    p.weight = row["WEIGHT"] || "100"
    p.race = row["RACE"] || "White"
    p.visual_characteristics = notes
    p.sex = row["SEX"] || "Male"
    p.last_seen_location = location
    p.last_seen_date = Time.now
    p.notes = notes
    p.build_type = "Strong"
    p.relationship_to_submitter = "Father"

    p.save!


    c = Case.new
    c.case_identifier =  rand(1283471209)
    c.notes = notes
    c.person = p
    c.user = User.first

    c.save!
  end

end
