class PeriodicAtom < ApplicationRecord
  has_one :electron_shell # electron_shellが外部キーを持つ
  belongs_to :atomic_group # presence: trueを含む

  validates :name, presence: true, uniqueness: true
  validates :symbol, presence: true, uniqueness: true
  validates :atomic_num, presence: true, uniqueness: true
  validates :period, presence: true
end
