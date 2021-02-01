require 'rails_helper'

RSpec.describe PatientAddress, type: :model do
  before do
    @patient_address = FactoryBot.build(:patient_address)
  end

  describe '患者住所登録' do
    context '住所が登録できる場合' do
      it '全ての項目の入力が存在すれば購入できること' do
        expect(@patient_address).to be_valid
      end
      it 'building_nameが空であっても購入できること' do
        @patient_address.building_name = ""
        @patient_address.valid?
      end
    end
    context '住所を登録できない場合' do
      it 'postal_codeが空では投稿できない' do
        @patient_address.postal_code = ''
        @patient_address.valid?
        expect(@patient_address.errors.full_messages).to include "郵便番号を入力してください"
      end
      it '郵便番号にはハイフンが必要であること' do
        @patient_address.postal_code = 7_970_035
        @patient_address.valid?
        expect(@patient_address.errors.full_messages).to include "郵便番号は不正な値です"
      end
      it 'prefecture_idが空では投稿できない' do
        @patient_address.prefecture_id = ''
        @patient_address.valid?
        expect(@patient_address.errors.full_messages).to include "都道府県を入力してください"
      end
      it 'cityが空では投稿できない' do
        @patient_address.city = ''
        @patient_address.valid?
        expect(@patient_address.errors.full_messages).to include "市町村を入力してください"
      end
      it 'addressが空では投稿できない' do
        @patient_address.address = ''
        @patient_address.valid?
        expect(@patient_address.errors.full_messages).to include "番地を入力してください"
      end
    end
  end

end
