class ChangeReferencesToElectronShells < ActiveRecord::Migration[6.0]
  def change
    remove_column :electron_shells, :periodic_atoms_id
    add_reference :electron_shells, :periodic_atom, foreign_key: true, index: true
  end
end
