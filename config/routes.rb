Rails.application.routes.draw do
  namespace :api do
    get 'one_contact_url' => 'contacts#first_contact_action'
    get 'two_contact_url' => 'contacts#second_contact_action'
    get 'three_contact_url' => 'contacts#three_contact_action'
    get 'all_contacts_url' => 'contacts#all_contacts_action'
  end
end
