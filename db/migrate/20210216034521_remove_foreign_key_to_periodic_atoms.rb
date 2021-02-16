class RemoveForeignKeyToPeriodicAtoms < ActiveRecord::Migration[6.0]
  def up
    remove_foreign_key :periodic_atoms, :electron_shells
    remove_reference :periodic_atoms, :electron_shells, foreign_key: true, index: true
  end

  def down
    add_foreign_key :periodic_atoms, :electron_shells
    add_reference :periodic_atoms, :electron_shells, foreign_key: true, index: true
  end
end
