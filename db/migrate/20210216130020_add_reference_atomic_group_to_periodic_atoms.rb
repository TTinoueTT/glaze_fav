class AddReferenceAtomicGroupToPeriodicAtoms < ActiveRecord::Migration[6.0]
  def change
    add_reference :periodic_atoms, :atomic_group, foreign_key: true, type: :integer
    remove_column :periodic_atoms, :group, :integer
  end
end
