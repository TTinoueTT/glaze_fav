class Material < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  validates :sio2, numericality: { less_than: 100 }
  # validates :sio2, numericality: { greater_than: 0.01 }, if: { greater_than_zero?: :sio2 }

  # greater_than_or_equal_to: 0.000000000000001
  # format: { with: /(\d{1,2}\.\d{0,2}|0)/ } # rounded_num: true #
  # varidate :num_regulation(:sio2)
  validates :al2o3, numericality: { less_than: 100 }
  validates :fe2o3, numericality: { less_than: 100 }
  validates :cao, numericality: { less_than: 100 }
  validates :mgo, numericality: { less_than: 100 }
  validates :k2o, numericality: { less_than: 100 }
  validates :na2o, numericality: { less_than: 100 }

  # 要素がシンボルの配列を作る %i
  # molecular_columns = %i[sio2 al2o3 fe2o3 cao mgo k2o na2o]
  private

  def greater_than_zero?(molecular_num)
    molecular_num >= 0
  end

  # def chack_decimal_place; end

  # def rounded_num(molecular_num)
  #   molecular_num.round(2)
  # end
  # def num_regulation(molecular_num)
  #   rounded_num = molecular_num.round(2)
  #   # errors.add(molecular_num, 'は100以下の数値で指定してください') if rounded_num >= 100
  # end
end
