class Contact < MailForm::Base
  attribute :name, validate: true
  attribute :email, validate: /\A[^@\s]+@[^@\s]+\z/
  attribute :message, validate: true
  attribute :request

  def headers
    {
      subject: "New Contact Message",
      to: "dakpan0593@gmail.com",
      from: 'dakpan0593@gmail.com',
      # from: %("#{name}" <#{email}>),
      reply_to: contact.email
    }
  end
end


