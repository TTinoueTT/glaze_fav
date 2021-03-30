class Material < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  # validates :category
  # validates :description

  validates :sio2, numericality: { less_than: 100, greater_than_or_equal_to: 0 }
  # format: { with: /(\d{1,2}\.\d{0,2}|0)/ } # rounded_num: true #
  # varidate :num_regulation(:sio2)
  validates :al2o3, numericality: { less_than: 100, greater_than_or_equal_to: 0 }
  validates :fe2o3, numericality: { less_than: 100, greater_than_or_equal_to: 0 }
  validates :cao, numericality: { less_than: 100, greater_than_or_equal_to: 0 }
  validates :mgo, numericality: { less_than: 100, greater_than_or_equal_to: 0 }
  validates :k2o, numericality: { less_than: 100, greater_than_or_equal_to: 0 }
  validates :na2o, numericality: { less_than: 100, greater_than_or_equal_to: 0 }
  validates :mno, numericality: { less_than: 100, greater_than_or_equal_to: 0 }
  validates :zno, numericality: { less_than: 100, greater_than_or_equal_to: 0 }
  validates :bao, numericality: { less_than: 100, greater_than_or_equal_to: 0 }
  validates :p2o5, numericality: { less_than: 100, greater_than_or_equal_to: 0 }
  validates :iglos, numericality: { less_than: 100, greater_than_or_equal_to: 0 }

  has_many :glazes, through: :glaze_materials
  has_many :glaze_materials
  belongs_to :category
  belongs_to :user
end

# lib/validators/greater_than_third_decimal_place に少数第三位を指定するメソッドがある
