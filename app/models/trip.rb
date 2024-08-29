class Trip < ApplicationRecord
  belongs_to :destination
  has_many :activities
  has_many :transportations
  has_many :accommodations
end
