FactoryBot.define do
  factory :event do
    title {"#{Faker::OnePiece.character} Time!"}
    description {"OnePiece citation : #{Faker::OnePiece.quote}"}
    start_date {Faker::Date.forward(30)}
    duration {5 * rand(1..120)}
    price {rand(1..1000)}
    location {Faker::OnePiece.location}
    administrator {FactoryBot.create(:user)}
  end
end