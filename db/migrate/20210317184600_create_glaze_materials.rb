class CreateGlazeMaterials < ActiveRecord::Migration[6.0]
  def change
    create_table :glaze_materials do |t|
      t.references :glaze, null: false, index: true, foreign_key: true
      t.references :material, null: false, index: true, foreign_key: true
      t.decimal :weight, precision: 8, scale: 2, default: '0.0'

      t.timestamps
    end
  end
end
