FactoryGirl.define do
  factory :user do
    email "123@gmail.com"
    password "useruser"
    password_confirmation "useruser"
  end
  factory :card do
    original_text "factory"
    translated_text "фабрика"
    review_date "2014-10-31"
    user_id 1
  end

end