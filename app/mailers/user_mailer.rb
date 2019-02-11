class UserMailer < ApplicationMailer
  default from: 'no-reply@monsite.fr'
 
  def welcome_email(user)
    @user = user 
    @url  = 'http://everbrite/login' 
    @email_service = ''
    mail(to: @user.email, subject: 'Confirmation inscription') 
  end
end
