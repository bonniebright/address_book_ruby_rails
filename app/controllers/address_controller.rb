class AddressesController < ApplicationController
  def new
    contact = Contact.find(params[:contact_id])
    @address = contact.addresses.new
    render('/addresses/new.html.erb')
  end

  def create
    @address = Address.new(:address => params[:address],
                       :contact_id => params[:contact_id],
                       :label => params[:label])
    if @address.save
      render('/addresses/success.html.erb')
    else
      render('/addresses/new.html.erb')
    end
  end

#   def edit
#     @phone = Phone.find(params[:id])
#     render ('/phones/edit.html.erb')
#   end

#   def update
#     @phone = Phone.find(params[:id])
#      if @phone.update(:number => params[:number],
#                       :label => params[:label])
#       render('phones/success.html.erb')
#     else
#       render('phones/edit.html.erb')
#     end
#   end

#   def destroy
#     @phone = Phone.find(params[:id])
#     @phone.destroy
#     render('phones/destroy.html.erb')
#   end
end
