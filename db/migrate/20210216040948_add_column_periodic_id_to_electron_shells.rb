class AddColumnPeriodicIdToElectronShells < ActiveRecord::Migration[6.0]
  def change
    add_reference :electron_shells, :periodic_atoms, foreign_key: true, index: true
  end
end
