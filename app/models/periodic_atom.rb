class PeriodicAtom < ApplicationRecord
  has_one :electron_shell
  belongs_to :atomic_group # presence: trueを含む

  validates :name, presence: true, uniqueness: true
  validates :symbol, presence: true, uniqueness: true
  validates :atomic_num, presence: true, uniqueness: true
  validates :period, presence: true
end
