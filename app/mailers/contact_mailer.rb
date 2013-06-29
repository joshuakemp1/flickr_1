class ContactMailer < ActionMailer::Base
     default from:  "wellspringlawnandlandscape@gmail.com"

    def service_request(contact)
        @contact = contact
        mail(to: contact.email, subject: "Service Request!")
 
 end
end
