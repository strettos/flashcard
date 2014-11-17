FactoryGirl.define do
  factory :card do
    original_text "factory"
    translated_text "фабрика"
    review_date "2014-10-31"
  end
  factory :user do
    email "user@gmail.com"
    password "useruser"
  end
end