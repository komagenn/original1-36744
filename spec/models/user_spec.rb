require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
 end
  describe "ユーザー新規登録" do
   context "新規登録できるとき" do
    it "nick_nameとemailとpasswordとpassword_confirmationとfull_width_nameとname_kanaが存在すれば登録できる" do
      expect(@user).to be_valid
    end

    it "passwordとpassword_confirmationが6文字以上であれば登録できる" do
      @user.password = '05omuraisu'
      @user.password_confirmation = '05omuraisu'
      expect(@user).to be_valid
    end
   end
   context "新規登録できないとき" do
    it "nick_nameが空では登録できない" do
      @user.nick_name = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("ニックネームを入力してください")
    end
    it "英語のみ・数字のみ・全角文字を含むpasswordでは登録できない" do
      @user.password = 'aaaaaa','111111','111AAA'
      @user.valid?
      expect(@user.errors.full_messages).to include("パスワードは不正な値です")
    end
    it "passwordとpassword_confirmationが不一致だと登録できない" do
      @user.password = '05omuraisu'
      @user.password_confirmation = '05OMuraisU'
      @user.valid?
      expect(@user.errors.full_messages).to include("パスワード（確認用）とパスワードの入力が一致しません")
    end
    it "full_width_first_nameが空では登録できない" do
      @user.full_width_first_name = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("名字(全角)を入力してください")
    end
    it "full_width_first_nameが漢字・ひらがな・カタカナでないと登録できない" do
      @user.full_width_first_name = 'aaa'
      @user.valid?
      expect(@user.errors.full_messages).to include("英語では入力できません")
    end
    it "full_width_last_nameが空では登録できない" do
      @user.full_width_last_name = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("名前(全角)を入力してください")
    end
    it "full_width_last_nameが漢字・ひらがな・カタカナでないと登録できない" do
      @user.full_width_last_name = 'aaa'
      @user.valid?
      expect(@user.errors.full_messages).to include("漢字で入力してください")
    end
     it "first_name_kanaが空では登録できない" do
       @user.first_name_kana = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("名字(カナ)を入力してください")
    end
    it "first_name_kana,がカタカナでないと登録できない" do
      @user.first_name_kana = 'あああ'
      @user.valid?
      expect(@user.errors.full_messages).to include("カタカナで入力してください")
    end
    it "last_name_kana,が空では登録できない" do
      @user.last_name_kana = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("名前(カナ)を入力してください")
    end
    it "last_name_kana,がカタカナでないと登録できない" do
      @user.last_name_kana = 'あああ'
      @user.valid?
      expect(@user.errors.full_messages).to include("カタカナで入力してくだい")
    end
  
   end
  end
end
