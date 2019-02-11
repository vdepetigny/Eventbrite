class User < ApplicationRecord
  has_many :event_creations, foreign_key: 'administrator_id', class_name: "Event"
  has_many :event_attendances, foreign_key: 'attendee_id', class_name: "Attendance"
  has_many :events, through: :event_attendances
  after_create :welcome_send

  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end
end
