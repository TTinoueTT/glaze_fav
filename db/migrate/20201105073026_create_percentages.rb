class CreatePercentages < ActiveRecord::Migration[6.0]
  def change
    create_table :percentages do |t|
      t.text :material
      t.float :sio2

      t.timestamps
    end
  end
end
