class Attendance < ApplicationRecord
	belongs_to :attendee, class_name: "User"
	belongs_to :event
	after_create :notice_send

  def notice_send
    AdminMailer.new_attendee_email(self).deliver_now
  end
end
