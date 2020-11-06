class Material < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :sio2, numericality: true
end
