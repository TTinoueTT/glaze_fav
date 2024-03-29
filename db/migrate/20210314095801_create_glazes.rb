class CreateGlazes < ActiveRecord::Migration[6.0]
  def change
    create_table :glazes do |t|
      t.references :user, foreign_key: true
      t.string :name, null: false, unique: true

      t.timestamps
    end
  end
end
