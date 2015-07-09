class ContactsController < ApplicationController

  def create
    @contact = Contact.create(contact_params)
    if @contact.save
      ContactMailer.contact_email(@contact).deliver
      ContactMailer.contact_confirmation(@contact).deliver
      redirect_to root_path
    end
  end

  private

    def contact_params
      params.require(:contact).permit(:name, :email, :phone, :stylist, :message)
    end
end
