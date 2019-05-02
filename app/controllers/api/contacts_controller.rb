class Api::ContactsController < ApplicationController
  def first_contact_action
    @contact = Contact.first
    render 'one_contact_view.json.jbuilder'
  end
  
  def second_contact_action
    @contact = Contact.second
    render 'two_contact_view.json.jbuilder'  
  end

  def three_contact_action
    @contact = Contact.third
    render 'three_contact_view.json.jbuilder'
  end

  def all_contacts_action
    @contacts = Contact.all
    render 'all_contacts_view.json.jbuilder'
  end
end
