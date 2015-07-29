require 'rspec'



  puts 'whats your name?:'
  name = gets.chomp.downcase

 case name

   when 'igor'
     puts 'Hello Igor. how are your'

   when 'david'
     puts "Error: i don't know you"

   when 'mark'
     puts 'Hello mark...How are you'

   else
     puts "Unknown name:#{name}"


sleep 1

puts 'Application is closing...'

sleep 2

puts '<<Thank you for your choice>>'

end

