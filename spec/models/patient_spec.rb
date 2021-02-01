require 'rails_helper'

RSpec.describe Patient, type: :model do
  before do
    @patient = FactoryBot.build(:patient)
  end

  describe '患者登録' do
    it '全ての項目の入力が存在すれば登録できること' do
      expect(@patient).to be_valid
    end
    it 'family_nameがない場合は登録できないこと' do
      @patient.family_name = ''
      @patient.valid?
      expect(@patient.errors.full_messages).to include "苗字を入力してください"
    end
    it 'family_nameは、全角（漢字・ひらがな・カタカナ）での入力が必須であること' do
      @patient.family_name = '@@'
      @patient.valid?
      expect(@patient.errors.full_messages).to include '苗字は不正な値です'
    end
    it 'first_nameがない場合は登録できないこと' do
      @patient.first_name = ''
      @patient.valid?
      expect(@patient.errors.full_messages).to include "名前を入力してください"
    end
    it 'first_nameは、全角（漢字・ひらがな・カタカナ）での入力が必須であること' do
      @patient.first_name = '@@'
      @patient.valid?
      expect(@patient.errors.full_messages).to include '名前は不正な値です'
    end
    it 'family_name_kanaがない場合は登録できないこと' do
      @patient.family_name_kana = ''
      @patient.valid?
      expect(@patient.errors.full_messages).to include "苗字のフリガナを入力してください"
    end
    it 'family_name_kanaは、全角カタカナでの入力が必須であること' do
      @patient.family_name_kana = 'aa'
      @patient.valid?
      expect(@patient.errors.full_messages).to include '苗字のフリガナは不正な値です'
    end
    it 'first_name_kanaがない場合は登録できないこと' do
      @patient.first_name_kana = ''
      @patient.valid?
      expect(@patient.errors.full_messages).to include "名前のフリガナを入力してください"
    end
    it 'first_name_kanaは、全角カタカナでの入力が必須であること' do
      @patient.first_name_kana = 'aa'
      @patient.valid?
      expect(@patient.errors.full_messages).to include '名前のフリガナは不正な値です'
    end
    it 'birth_date_idがない場合は登録できないこと' do
      @patient.birth_date_id = ''
      @patient.valid?
      expect(@patient.errors.full_messages).to include "誕生日を入力してください"
    end
    it 'phone_numberがない場合は登録できないこと' do
      @patient.phone_number = ''
      @patient.valid?
      expect(@patient.errors.full_messages).to include "電話番号を入力してください"
    end
    it '電話番号にはハイフンがあると登録できない' do
      @patient.phone_number = '000-0000-0000'
      @patient.valid?
      expect(@patient.errors.full_messages).to include '電話番号は不正な値です'
    end
    it '電話番号には11桁以上であると登録できない' do
      @patient.phone_number = '111111111111'
      @patient.valid?
      expect(@patient.errors.full_messages).to include "電話番号は不正な値です"
    end
  end
end
