require 'rails_helper'

RSpec.describe Address, type: :model do
  before do
    @address = FactoryBot.build(:address)
  end

  describe '住所登録' do
    context '住所が登録できる場合' do
      it '全ての項目の入力が存在すれば購入できること' do
        expect(@address).to be_valid
      end
      it 'building_nameが空であっても購入できること' do
        @address.building_name = ""
        @address.valid?
      end
    end
    context '住所を登録できない場合' do
      it 'postal_codeが空では投稿できない' do
        @address.postal_code = ''
        @address.valid?
        expect(@address.errors.full_messages).to include "郵便番号を入力してください"
      end
      it '郵便番号にはハイフンが必要であること' do
        @address.postal_code = 7_970_035
        @address.valid?
        expect(@address.errors.full_messages).to include "郵便番号は不正な値です"
      end
      it 'prefectureが空では投稿できない' do
        @address.prefecture = ''
        @address.valid?
        expect(@address.errors.full_messages).to include "都道府県を入力してください"
      end
      it 'cityが空では投稿できない' do
        @address.city = ''
        @address.valid?
        expect(@address.errors.full_messages).to include "市町村を入力してください"
      end
      it 'addressが空では投稿できない' do
        @address.address = ''
        @address.valid?
        expect(@address.errors.full_messages).to include "番地を入力してください"
      end
    end
  end
end
