# frozen_string_literal: true

FactoryBot.define do
  factory :article do
    user nil
    team nil
    title { 'MyString' }
    content { 'MyText' }
  end
end
