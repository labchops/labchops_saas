class ContactsController < ApplicationController
    def new
        @contact = Contact.new
    end

    def create
        @contact = Contact.new(contact_params)
        
        if @contact.save
            flash[:success] = 'Message sent homie....'
            redirect_to new_contact_path #, notice: "Successful :)"
        else
            flash[:error] = 'What you trying to do bruh? What kind of funny business you got going on?'
            redirect_to new_contact_path  #, notice: "What you trying to do bruh???"
        end   
    end
    
    private
        def contact_params
            params.require(:contact).permit(:name, :email, :comments)
        end
end