# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Doctor.destroy_all
Patient.destroy_all
Appointement.destroy_all
City.destroy_all
Specialty.destroy_all
LinkSpecialty.destroy_all


5.times do 
	city = City.create!(name: Faker::Address.city)
end

puts "5 city créés"

10.times do
	specialty = Specialty.create!(name: Faker::Cannabis.type)
end

puts "10 specialties créés"

10.times do
 doctor = Doctor.create!(first_name: Faker::LordOfTheRings.character, last_name: Faker::LordOfTheRings.character, zip_code: Faker::Number.number(5), city_id: rand(City.all.first.id..City.all.last.id))
end

puts "10 docteurs créés"

20.times do
	link_specialty = LinkSpecialty.create!(doctor_id: rand(Doctor.all.first.id..Doctor.all.last.id), specialty_id: rand(Specialty.all.first.id..Specialty.all.last.id))
end

puts "20 link specialties"

20.times do
 patient = Patient.create!(first_name: Faker::Pokemon.name, last_name: Faker::Pokemon.location, city_id: rand(City.all.first.id..City.all.last.id))
end

puts "20 patients créés"

30.times do
	appointement = Appointement.create!(date: Faker::Time.forward(23, :all), patient_id: rand(Patient.all.first.id..Patient.all.last.id), doctor_id: rand(Doctor.all.first.id..Doctor.all.last.id), city_id: rand(City.all.first.id..City.all.last.id))
end

puts "30 appointments créés"