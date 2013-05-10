class ContactMailer < ActionMailer::Base
     default to:  "joshuakemp85@gmail.com"

    def service_request(contact)
        @contact = contact
      mail(from: contact.email, subject: "Service Request!")
 
 end
end
