class PeriodicAtom < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :symbol, presence: true, uniqueness: true
  validates :atomic_num, presence: true, uniqueness: true
  validates :group, presence: true
  validates :period, presence: true
  # validates :weight
end
