class Material < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  validates :sio2, numericality: { less_than: 100, greater_than_or_equal_to: 0 }
  # format: { with: /(\d{1,2}\.\d{0,2}|0)/ } # rounded_num: true #
  # varidate :num_regulation(:sio2)
  validates :al2o3, numericality: { less_than: 100, greater_than_or_equal_to: 0 }
  validates :fe2o3, numericality: { less_than: 100, greater_than_or_equal_to: 0 }
  validates :cao, numericality: { less_than: 100, greater_than_or_equal_to: 0 }
  validates :mgo, numericality: { less_than: 100, greater_than_or_equal_to: 0 }
  validates :k2o, numericality: { less_than: 100, greater_than_or_equal_to: 0 }
  validates :na2o, numericality: { less_than: 100, greater_than_or_equal_to: 0 }
end

# lib/validators/greater_than_third_decimal_place に少数第三位を指定するメソッドがある
