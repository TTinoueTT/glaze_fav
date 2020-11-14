class ChangeColumnAddOption < ActiveRecord::Migration[6.0]
  def change
    change_column :materials, :sio2, :decimal, precision: 4, scale: 2, default: 0.00
    change_column :materials, :tio2, :decimal, precision: 4, scale: 2, default: 0.00
    change_column :materials, :al2o3, :decimal, precision: 4, scale: 2, default: 0.00
    change_column :materials, :fe2o3, :decimal, precision: 4, scale: 2, default: 0.00
    change_column :materials, :cao, :decimal, precision: 4, scale: 2, default: 0.00
    change_column :materials, :mgo, :decimal, precision: 4, scale: 2, default: 0.00
    change_column :materials, :k2o, :decimal, precision: 4, scale: 2, default: 0.00
    change_column :materials, :na2o, :decimal, precision: 4, scale: 2, default: 0.00
    # Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
