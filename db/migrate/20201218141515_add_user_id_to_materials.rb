class AddUserIdToMaterials < ActiveRecord::Migration[6.0]
  def up
    execute 'DELETE FROM materials;'
    add_reference :materials, :user, null: false, index: true
  end

  def down
    remove_reference :materials, :user, index: true
  end
end
