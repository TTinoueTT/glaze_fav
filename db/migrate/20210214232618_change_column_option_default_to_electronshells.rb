class ChangeColumnOptionDefaultToElectronshells < ActiveRecord::Migration[6.0]
  def change
    change_column :electron_shells, :k_shell, :integer, default: 0
    change_column :electron_shells, :l_shell, :integer, default: 0
    change_column :electron_shells, :m_shell, :integer, default: 0
    change_column :electron_shells, :n_shell, :integer, default: 0
    change_column :electron_shells, :o_shell, :integer, default: 0
    change_column :electron_shells, :p_shell, :integer, default: 0
    change_column :electron_shells, :q_shell, :integer, default: 0
  end
end
