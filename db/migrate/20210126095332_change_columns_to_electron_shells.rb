class ChangeColumnsToElectronShells < ActiveRecord::Migration[6.0]
  def change
    add_numericality_constraint :electron_shells, :k_shell, greater_than_or_equal_to: 0, less_than_or_equal_to: 2
    add_numericality_constraint :electron_shells, :l_shell, greater_than_or_equal_to: 0, less_than_or_equal_to: 8
    add_numericality_constraint :electron_shells, :m_shell, greater_than_or_equal_to: 0, less_than_or_equal_to: 18
    add_numericality_constraint :electron_shells, :n_shell, greater_than_or_equal_to: 0, less_than_or_equal_to: 32
    add_numericality_constraint :electron_shells, :o_shell, greater_than_or_equal_to: 0, less_than_or_equal_to: 50
    add_numericality_constraint :electron_shells, :p_shell, greater_than_or_equal_to: 0, less_than_or_equal_to: 72
    add_numericality_constraint :electron_shells, :q_shell, greater_than_or_equal_to: 0, less_than_or_equal_to: 98
  end
end
# == 20210126095332 ChangeColumnsToElectronShells: migrating ====================
# -- execute("ALTER TABLE \"electron_shells\" ADD CONSTRAINT electron_shells_k_shell_numericality CHECK (\"k_shell\" >= 0 AND \"k_shell\" <= 2)")
#    -> 0.0064s
# -- execute("ALTER TABLE \"electron_shells\" ADD CONSTRAINT electron_shells_l_shell_numericality CHECK (\"l_shell\" >= 0 AND \"l_shell\" <= 8)")
#    -> 0.0031s
# -- execute("ALTER TABLE \"electron_shells\" ADD CONSTRAINT electron_shells_m_shell_numericality CHECK (\"m_shell\" >= 0 AND \"m_shell\" <= 18)")
#    -> 0.0117s
# -- execute("ALTER TABLE \"electron_shells\" ADD CONSTRAINT electron_shells_n_shell_numericality CHECK (\"n_shell\" >= 0 AND \"n_shell\" <= 32)")
#    -> 0.0013s
# -- execute("ALTER TABLE \"electron_shells\" ADD CONSTRAINT electron_shells_o_shell_numericality CHECK (\"o_shell\" >= 0 AND \"o_shell\" <= 50)")
#    -> 0.0015s
# -- execute("ALTER TABLE \"electron_shells\" ADD CONSTRAINT electron_shells_p_shell_numericality CHECK (\"p_shell\" >= 0 AND \"p_shell\" <= 72)")
#    -> 0.0046s
# -- execute("ALTER TABLE \"electron_shells\" ADD CONSTRAINT electron_shells_q_shell_numericality CHECK (\"q_shell\" >= 0 AND \"q_shell\" <= 98)")
#    -> 0.0015s
# == 20210126095332 ChangeColumnsToElectronShells: migrated (0.0307s) ===========
