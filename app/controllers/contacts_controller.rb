class ContactsController < ApplicationController
  # GET /contacts/1
  # GET /contacts/1.json
  def show
    @contact = Contact.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @contact }
    end
  end

  # GET /contacts/new
  # GET /contacts/new.json
  def new
    @contact = Contact.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @contact }
    end
  end

 

  # POST /contacts
  # POST /contacts.json
  def create
    @contact = Contact.new(params[:contact])
    
    respond_to do |format|

        @contact.save
       
        
        format.html { redirect_to @contact, notice: 'Wellspring service request sent! We will be in touch soon!' }
        format.json { render json: @contact, status: :created, location: @contact }
        ContactMailer.service_request(@contact).deliver
      else
        format.html { render action: "new" }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end
 

  
end
