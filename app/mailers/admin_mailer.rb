class AdminMailer < ApplicationMailer
default from: 'no-reply@monsite.fr'
 
  def new_attendee_email(attendance)
    #@find_admin = attendance.event_id
    #@event = Event.find_by(@find_admin)
    #@admin = User.find_by(@event.administrator_id)
    @attendee = attendance.attendee
    @admin = attendance.event.administrator
    @url  = 'http://eventbrite/login' 
    mail(to: @admin.email, subject: 'Nouveau participant') 
  end
end
