class ContactMailer < ActionMailer::Base
  # default from: "from@example.com"
# 
  # # Subject can be set in your I18n file at config/locales/en.yml
  # # with the following lookup:
  # #
  # #   en.contact_mailer.contact_us.subject
  # #
  # def contact_us
    # @greeting = "Hi"
# 
    # mail to: "to@example.org"
  # end
  
  default :from => "no-reply@gmail.com"
  default :to => "anupbhakrya@gmail.com"

  def new_contact(contact)
    @contact = contact
    mail(:subject => "[#{@contact.email}] #{@contact.name}")
  end

end
