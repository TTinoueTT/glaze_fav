FactoryBot.define do
  factory :material do  # 特定のデータ名を持たせたい → :データ名, class: モデル名
    name { '基本の原料' } # テストデータのカラム { 値 }
    sio2 { 20.00 }
    tio2 { 20.00 }
    al2o3 { 20.00 }
    fe2o3 { 20.00 }
    cao { 20.00 }
    mgo { 20.00 }
    k2o { 20.00 }
    na2o { 20.00 }
    # admin # 関連モデル名
  end
end
