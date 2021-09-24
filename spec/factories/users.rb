FactoryBot.define do
  factory :user do
    nick_name             {'オムライス'}
    email                 {Faker::Internet.free_email}
    password              {'05omuraisu'}
    password_confirmation {password}
    full_width_first_name {'山田'}
    full_width_last_name  {'陸'}
    first_name_kana       {'ヤマダ'}
    last_name_kana        {'リク'}
  end
end