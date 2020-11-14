class ChangColumnAddOption < ActiveRecord::Migration[6.0]
  def change
    change_column :materials, :sio2, :float, default: 0.00
    change_column :materials, :tio2, :float, default: 0.00
    change_column :materials, :al2o3, :float, default: 0.00
    change_column :materials, :fe2o3, :float, default: 0.00
    change_column :materials, :cao, :float, default: 0.00
    change_column :materials, :mgo, :float, default: 0.00
    change_column :materials, :k2o, :float, default: 0.00
    change_column :materials, :na2o, :float, default: 0.00
    # Ex:- :default =>''
    # Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
