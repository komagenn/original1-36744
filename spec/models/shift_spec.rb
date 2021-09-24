require 'rails_helper'

RSpec.describe Shift, type: :model do
  before do
    @shift = FactoryBot.build(:shift)
  end

  context '内容に問題ない場合' do
    it 'すべての値が正しく入力されていれば保存できること' do
      expect(@shift).to be_valid
    end
    it 'remarkは空でも保存できること' do
      @shift.remark = ''
      expect(@shift).to be_valid
    end
  end
  context '内容に問題がある場合' do
    it 'work_idが空では登録できない' do
      @shift.work_id = ''
      @shift.valid?
      expect(@shift.errors.full_messages).to include "希望日数を選択してください"
    end
    it 'hour_idが空では登録できない' do
      @shift.hour_id = ''
      @shift.valid?
      expect(@shift.errors.full_messages).to include "希望勤務時間を選択してください"
    end
    it 'sum_idが空では登録できない' do
      @shift.sum_id = ''
      @shift.valid?
      expect(@shift.errors.full_messages).to include "合計労働時間を選択してください"
    end
    it 'holidayが空では登録できない' do
      @shift.holiday = ''
      @shift.valid?
      expect(@shift.errors.full_messages).to include "希望休暇を入力してください"
    end
  end
end
