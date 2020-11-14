class AddColumnMolecularsAndDescription < ActiveRecord::Migration[6.0]
  def change
    add_column :materials, :tio2, :float
    add_column :materials, :al2o3, :float
    add_column :materials, :fe2o3, :float
    add_column :materials, :cao, :float
    add_column :materials, :mgo, :float
    add_column :materials, :k2o, :float
    add_column :materials, :na2o, :float
    # やっぱりdecriptionは追加しない
  end
end
