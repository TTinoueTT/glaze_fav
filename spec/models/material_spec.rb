require 'rails_helper'

RSpec.describe Material, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  describe '原料の管理機能' do
    describe 'レコードの作成' do
      it '基本(factoryファイル)のデータ' do
        material = build(:material)
        expect(material).to be_valid
      end
    end
    describe 'レコードの作成' do
      it '検証エラーを期待する' do
      end
    end
  end
end
