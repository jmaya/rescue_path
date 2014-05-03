class Person < ActiveRecord::Base
  has_many :cases

  validates :first_name, :presence => true
  validates :last_name, :presence => true
  validates :age, :presence => true
  validates :hair_color, :presence => true
  validates :eye_color, :presence => true
  validates :height, :presence => true
  validates :weight, :presence => true
  validates :race, :presence => true
  validates :visual_characteristics, :presence => true
  validates :last_seen_date, :presence => true
  validates :last_seen_date, :presence => true
  validates :build_type, :presence => true

end
