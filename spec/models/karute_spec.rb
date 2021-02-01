require 'rails_helper'

RSpec.describe Karute, type: :model do
  before do
    @karute = FactoryBot.build(:karute)
  end

  describe 'カルテ登録' do
    it '全ての項目の入力が存在すれば登録できること' do
      expect(@karute).to be_valid
    end
    it 'painが空であっても購入できること' do
      @karute.pain = ""
      @karute.valid?
    end
    it 'illnessが空であっても購入できること' do
      @karute.illness = ""
      @karute.valid?
    end
    it 'historyが空であっても購入できること' do
      @karute.history = ""
      @karute.valid?
    end
    it 'medicineが空であっても購入できること' do
      @karute.medicine = ""
      @karute.valid?
    end
    it 'habitが空であっても購入できること' do
      @karute.habit = ""
      @karute.valid?
    end
    it 'memoが空であっても購入できること' do
      @karute.memo = ""
      @karute.valid?
    end
    it 'dateが空であっても購入できること' do
      @karute.date = ""
      @karute.valid?
    end
  end
end
