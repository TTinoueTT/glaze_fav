class AddReferenceColumnToMaterials < ActiveRecord::Migration[6.0]
  def change
    add_reference :materials, :category, foreign_key: true
  end
end
