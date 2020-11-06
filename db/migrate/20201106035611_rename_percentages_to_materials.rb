class RenamePercentagesToMaterials < ActiveRecord::Migration[6.0]
  def change
    rename_table 'percentages', 'materials'
  end
end
