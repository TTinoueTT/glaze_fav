class AddColumnDescriptionAndNewMolname < ActiveRecord::Migration[6.0]
  def change
    add_column :materials, :description, :text
    add_column :materials, :mno, :decimal, precision: 4, scale: 2, default: 0.00
    add_column :materials, :zno, :decimal, precision: 4, scale: 2, default: 0.00
    add_column :materials, :bao, :decimal, precision: 4, scale: 2, default: 0.00
    add_column :materials, :p2o5, :decimal, precision: 4, scale: 2, default: 0.00
    add_column :materials, :iglos, :decimal, precision: 4, scale: 2, default: 0.00
  end
end
