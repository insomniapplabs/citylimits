class ContactMailer < ActionMailer::Base

  def contact_email(contact)
    @contact = contact
    mail(to: "aaronjohnsonis@gmail.com", subject: "New Contact Message", from: @contact.email)
  end

  def contact_confirmation(contact)
      @contact = contact
      mail(to: @contact.email, subject: "City Limits Salon", from: "aaronjohnsonis@gmail.com")
  end

end
