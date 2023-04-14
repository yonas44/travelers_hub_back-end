require 'faker'

FactoryBot.define do
  factory :user do
    username { Faker::Internet.unique.username }
    password { Faker::Internet.password }
  end
end
