class AddIndexUniqueToGlazeMaterials < ActiveRecord::Migration[6.0]
  def change
    add_index :glaze_materials, %i[glaze_id material_id], unique: true
  end
end
