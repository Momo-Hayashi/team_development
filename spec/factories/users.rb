# frozen_string_literal: true

FactoryBot.define do
  factory :user, class: User do
    email { 'test@gmail.com' }
    password { 'testtesttest' }
  end
end
