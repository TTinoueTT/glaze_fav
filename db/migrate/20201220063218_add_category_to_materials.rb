class AddCategoryToMaterials < ActiveRecord::Migration[6.0]
  def change
    add_column :materials, :category, :string, after: :updated_at
    # Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
