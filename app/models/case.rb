class Case < ActiveRecord::Base
  belongs_to :person
  belongs_to :user
  has_many :clues
end
