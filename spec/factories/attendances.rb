FactoryBot.define do
  factory :attendance do
  attendee {FactoryBot.create(:user)}
  event {FactoryBot.create(:event)}
  stripe_customer_id {Faker::Number.number(10)}
  end
end
