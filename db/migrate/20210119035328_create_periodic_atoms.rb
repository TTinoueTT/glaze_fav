class CreatePeriodicAtoms < ActiveRecord::Migration[6.0]
  def change
    create_table :periodic_atoms do |t|
      t.string :name
      t.string :symbol
      t.integer :atomic_num
      t.integer :group
      t.integer :period
      t.decimal :weight

      t.timestamps
    end
  end
end
