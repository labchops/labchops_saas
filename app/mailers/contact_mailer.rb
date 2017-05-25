class ContactMailer , ActionMailer::Base
    default to: 'aaron.roberts47@gmail.com'
    
    def contact_email(name, email, body)
        @name = name
        @email = email
        @body = body
        
        mail(from: email, subject; 'Contact Fom Message')
    end
end