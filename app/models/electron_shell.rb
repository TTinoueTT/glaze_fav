class ElectronShell < ApplicationRecord
  # belongs_to :periodic_atom, primary_key: :id
  belongs_to :periodic_atom, primary_key: :id, optional: true

  validates :k_shell, numericality: { only_integer: true, greater_than_or_equal_to: 0 }, inclusion: { in: 0..2 }
  validates :l_shell, numericality: { only_integer: true, greater_than_or_equal_to: 0 }, inclusion: { in: 0..8 }
  validates :m_shell, numericality: { only_integer: true, greater_than_or_equal_to: 0 }, inclusion: { in: 0..18 }
  validates :n_shell, numericality: { only_integer: true, greater_than_or_equal_to: 0 }, inclusion: { in: 0..32 }
  validates :o_shell, numericality: { only_integer: true, greater_than_or_equal_to: 0 }, inclusion: { in: 0..50 }
  validates :p_shell, numericality: { only_integer: true, greater_than_or_equal_to: 0 }, inclusion: { in: 0..72 }
  validates :q_shell, numericality: { only_integer: true, greater_than_or_equal_to: 0 }, inclusion: { in: 0..98 }

  # has_one :periodic_atom
  # has_one :periodic_atom, dependent: :destroy
end
