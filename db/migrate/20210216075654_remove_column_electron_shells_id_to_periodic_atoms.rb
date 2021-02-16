class RemoveColumnElectronShellsIdToPeriodicAtoms < ActiveRecord::Migration[6.0]
  def change
    remove_column :periodic_atoms, :electron_shells_id
  end
end
