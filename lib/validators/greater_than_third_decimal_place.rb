class GreaterThanThirdDecimalPlace < ActiveModel::EachValidator
  def validate_each(record, attribute, value) # バリデーションメソッド
    record.errors.add(attribute, ' は 小数点第二位以上の値にしてください！') if value < 0.01
  end
end
