class ChangeColumnFromMaterialToName < ActiveRecord::Migration[6.0]
  def change
    rename_column :materials, :material, :name
    # Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
