require 'http'

system 'clear'
puts "Welcome to the Contacts App"
puts "    [1] "

response = HTTP.get("http://localhost:3000/api/all_contacts_url")
contacts_array = response.parse

puts "All Contacts"
puts "+ • " * 15
puts ""

contacts_array.each do |contact_hash|
  puts ""
  puts "=" * 60
  puts "#{contact_hash["first_name"]} #{contact_hash["last_name"]}"
  puts
  puts "Email: #{contact_hash["email"]}"
  puts "Phone Number: #{contact_hash["phone_number"]}"

end