class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_one :shift

         with_options presence: true do
          validates :nick_name
          validates :full_width_first_name, format: { with: /\A[ぁ-んァ-ヶ一-龥々一]+\z/, message: "漢字で入力してください" } 
          validates :full_width_last_name, format: { with: /\A[ぁ-んァ-ヶ一-龥々一]+\z/, message: "漢字で入力してください" } 
          validates :first_name_kana, format: {with: /\A[ァ-ヶー－]+\z/, message: "カタカナで入力してください"}
          validates :last_name_kana, format: {with: /\A[ァ-ヶー－]+\z/,message: "カタカナで入力してください"} 
         end
          validates :password, format: {with:/\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/}
          
end
