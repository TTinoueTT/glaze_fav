class AddElectronshellToPeriodicAtoms < ActiveRecord::Migration[6.0]
  def change
    add_reference :periodic_atoms, :electron_shells, foreign_key: true, index: true
  end
end
