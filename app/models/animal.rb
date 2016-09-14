class Animal < ActiveRecord::Base
  #added relationship to the sightings table
  has_many :sightings
  #add validation for common_name to be at least 2 characters long
  validates :common_name, length: {minimum: 2}
  #add validation for kingdom to be at least 2 characters long
  validates :kingdom, length: {minimum: 2}
  #add validation for common_name to be no more than 25 characters long
  validates :common_name, length: {maximum: 25}
  #add validation for latin_name to be no more than 25 characters long
  validates :latin_name, length: {maximum: 50}
  #add validation for kingdom to be no more than 25 characters long
  validates :kingdom, length: {maximum: 25}
end
