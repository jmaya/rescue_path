# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.new(:email => 'test@test.com', password:'Password1', password_confirmation:'Password1')

user.skip_confirmation!
user.save!

person = Person.create!(
    first_name:'John',
    last_name:'Doe',
    age:'21',
    hair_color:'Black',
    eye_color:'Black',
    height:'6.2',
    weight:'215',
    race:'White',
    visual_characteristics:'Weird tatoo in left sholder',
    last_seen_location:'Miami',
    last_seen_date: Time.now,
    notes:'This is a sample note',
    build_type:'Skinny',
    sex:'Male',
    relationship_to_submitter:'Brother'
)

c = Case.create!(
  case_identifier: 'RandomCase1234',
  notes:'This is a sample note for the case',
  person: person,
  user: user
)

clue = Clue.create!(
  info: "This is a test clue",
  user: user,
  case: c
)
