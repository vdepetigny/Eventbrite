class Event < ApplicationRecord
  has_many :organized_events, foreign_key: 'administrator_id', class_name: "Event"
  has_many :event_attendances, foreign_key: 'attendee_id', class_name: "Attendance"
  has_many :events, through: :event_attendances
end
