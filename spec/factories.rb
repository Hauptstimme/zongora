FactoryGirl.define do
  factory :folder do
    sequence(:name) { |n| "folder_#{n}" }
  end

  factory :user do
    sequence(:email) { |n| "qvbn#{n}@maldoror.tk" }
    password "password"

    factory :user_with_lastfm do
      lastfm_key SecureRandom.hex(16)
    end
  end
end
