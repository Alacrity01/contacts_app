
# 1000.times do 
#   first_name = Faker::Name.first_name
#   last_name = Faker::Name.last_name

#   contact = Contact.new(
#                         first_name: first_name,
#                         middle_name: Faker::Name.middle_name,
#                         last_name: last_name,
#                         email: Faker::Internet.free_email("#{first_name}.#{last_name}"),
#                         phone_number: Faker::PhoneNumber.phone_number,
#                         bio: Faker::Hacker.say_something_smart
#                         )
#   contact.save
# end

# user_id_array = [1, 2]

# contacts = Contact.all

# contacts.each do |contact|
#   contact.user_id = user_id_array.sample
#   contact.save
# end

# index = 100

# 900.times do
#   contact = Contact.find(index)
#   contact.destroy
#   index += 1
# end
