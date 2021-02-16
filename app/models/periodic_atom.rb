class PeriodicAtom < ApplicationRecord
  has_one :electron_shell
  belongs_to :atomic_group

  validates :name, presence: true, uniqueness: true
  validates :symbol, presence: true, uniqueness: true
  validates :atomic_num, presence: true, uniqueness: true
  # validates :group, presence: true
  validates :period, presence: true
  # validates :weight

  # belongs_to :electron_shell, foreign_key: :electron_shell_id
end
