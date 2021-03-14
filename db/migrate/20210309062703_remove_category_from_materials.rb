class RemoveCategoryFromMaterials < ActiveRecord::Migration[6.0]
  def change
    remove_column :materials, :category, :string
  end
end
