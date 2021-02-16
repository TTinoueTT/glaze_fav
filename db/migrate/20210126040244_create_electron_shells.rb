class CreateElectronShells < ActiveRecord::Migration[6.0]
  def change
    create_table :electron_shells do |t|
      t.integer :k_shell, greater_than_or_equal_to: 0, less_than_or_equal_to: 2
      t.integer :l_shell, greater_than_or_equal_to: 0, less_than_or_equal_to: 8
      t.integer :m_shell, greater_than_or_equal_to: 0, less_than_or_equal_to: 18
      t.integer :n_shell, greater_than_or_equal_to: 0, less_than_or_equal_to: 32
      t.integer :o_shell, greater_than_or_equal_to: 0, less_than_or_equal_to: 50
      t.integer :p_shell, greater_than_or_equal_to: 0, less_than_or_equal_to: 72
      t.integer :q_shell, greater_than_or_equal_to: 0, less_than_or_equal_to: 98

      t.timestamps
    end
  end
end
