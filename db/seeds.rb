# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


puts"Cleaning database..."
Flat.destroy_all

puts"Creating flats..."
array_flats=[
    {id: 1, name: "villa", address: "Marseille", description: "100m2", price_per_night: 200, number_of_guests:10},
    {id: 2, name: "appart", address: "Paris", description: "30m2", price_per_night: 70, number_of_guests:2},
    {id: 3, name: "maison", address: "Melun", description: "70m2", price_per_night: 100, number_of_guests:5}
]

puts"Creating bookings..."
array_bookings=[
    {name: "bookings1", start_date: "2022-09-22" ,end_date: "2022-09-24", flat_id: 1},
    {name: "bookings2", start_date: "2022-10-01" ,end_date: "2022-11-01", flat_id: 1},
]

array_flats.each do |flat|
    flat_new = Flat.create!(flat)
    puts "Created #{flat_new.name}"
end

array_bookings.each do |booking|
    booking_new = Booking.create!(booking)
    puts "Created #{booking_new.name}"
end

puts "Finished"
