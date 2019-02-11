class UserMailer < ApplicationMailer
  default from: 'no-reply@monsite.fr'
 
  def welcome_email(user)
    @user = user 
    @url  = 'http://eventbrite/login' 
    @email_service = 'service_client@eventbrite.com'
    mail(to: @user.email, subject: 'Confirmation inscription') 
  end
end
