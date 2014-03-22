class AdminMailer < ActionMailer::Base
  default from: "contact@arteventz.com"
  default to: "me@arteventz.com"


  def contact_form(contact)
    @params = contact
    mail(subject: "New Contact form Submission")
  end
end