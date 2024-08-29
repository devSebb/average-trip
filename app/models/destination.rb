class Destination < ApplicationRecord
  has_many :trips
  has_many :activities
  has_many :transportations
  has_many :accommodations
end
