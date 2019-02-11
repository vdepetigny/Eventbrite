require 'faker'


40.times do
User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
	description: Faker::Friends.quote, 
	email: "vipetigny@yopmail.com",
	encrypted_password: "lazyass"
	)
end

10.times do
Event.create!(
    title: "#{Faker::OnePiece.character} Time!",
	description: "OnePiece citation : #{Faker::OnePiece.quote}", 
	start_date: Faker::Date.forward(30),
	duration: 5 * rand(1..120),
	price: rand(1..1000),
	location: Faker::OnePiece.location,
	administrator: User.all.sample
	)
end

100.times do
Attendance.create!(
	attendee: User.all.sample, 
	event: Event.all.sample,
	stripe_customer_id: Faker::Number.number(10)
	)
end