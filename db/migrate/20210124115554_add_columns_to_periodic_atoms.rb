class AddColumnsToPeriodicAtoms < ActiveRecord::Migration[6.0]
  def change
    add_column :periodic_atoms, :classification, :integer
    add_column :periodic_atoms, :electron_shell_id, :integer
    add_column :periodic_atoms, :melting_point, :decimal, precision: 4, scale: 2, default: 0.00
    add_column :periodic_atoms, :boiling_point, :decimal, precision: 4, scale: 2, default: 0.00
  end
end
