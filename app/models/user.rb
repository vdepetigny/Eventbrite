class User < ApplicationRecord
  has_many :events
  has_many :attendances, foreign_key: 'attendee_id', class_name: "Attendance"
  has_many :events, through: :attendances
end
