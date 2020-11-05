class Percentage < ApplicationRecord
  validates :material, presence: true
  validates :sio2, numericality: true
end
