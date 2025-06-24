class ContactFormController < ApplicationController

  def new
    # just renders the form
  end

  def create
    @name = params[:contact_form][:name]
    @last_name = params[:contact_form][:last_name]
    @email = params[:contact_form][:email]
    @message = params[:contact_form][:message]

    flash[:success] = "Your message has been sent successfully."
    redirect_to :root
  end

end
