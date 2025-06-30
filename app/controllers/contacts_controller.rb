class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    @contact.request = request
    if @contact.deliver
      flash[:success] = 'Message sent!'
      redirect_to new_contact_path
    else
      flash.now[:error] = 'Could not send message'
      render :new
    end
  end


  private

  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end

end
