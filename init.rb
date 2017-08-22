require_relative('lib/basecar')

puts
puts 'Enter the information for the camaro to start driving.'
puts

print 'Current Speed: '
current_speed = gets.chomp

print 'Brand: '
brand = gets.chomp

print 'Max Speed: '
max_speed = gets.chomp

puts
puts "Lets drive the #{brand} car now and reach #{max_speed}mph......"
puts

car = CamaroCar.new(:current_speed => current_speed, :brand => brand, :max_speed => max_speed)
car.drive
