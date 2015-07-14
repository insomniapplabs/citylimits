class ContactMailer < ActionMailer::Base

  def contact_email(contact)
    @contact = contact
    mail(to: "thecitylimitssalon@gmail.com", subject: "New Contact Message", from: @contact.email)
  end

  def contact_confirmation(contact)
      @contact = contact
      mail(to: @contact.email, subject: "City Limits Salon", from: "thecitylimitssalon@gmail.com")
  end

end
