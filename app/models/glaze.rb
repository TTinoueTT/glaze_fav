class Glaze < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :materials, through: :glaze_materials
  has_many :glaze_materials
  belongs_to :user
end
