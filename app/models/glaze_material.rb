class GlazeMaterial < ApplicationRecord
  varidates :glaze_id, uniqueness: { scope: :material_id }
  validates :weight, numericality: { greater_than_or_equal_to: 0 }

  belongs_to :glaze
  belongs_to :material
end
