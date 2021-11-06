FactoryBot.define do
  factory :member do
    username { "MyString" }
    email { "MyString" }
    password_digest { "MyString" }
    password_age { 1 }
  end
end
