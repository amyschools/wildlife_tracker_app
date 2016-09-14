class Sighting < ActiveRecord::Base
  belongs_to :animal
  #added validation to make sure the animal field is not blank
  validates :animal, presence: true
end
