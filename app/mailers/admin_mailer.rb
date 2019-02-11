class AdminMailer < ApplicationMailer
default from: 'no-reply@monsite.fr'
 
  def new_attendee_email(attendance)
    @attendee = attendance.attendee
    @event = attendance.event    
    @admin = attendance.event.administrator
    @url  = 'http://eventbrite/login' 
    mail(to: @admin.email, subject: 'Nouveau participant pour #{@event.title}') 
  end
end
