# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Specialty.create(name: "Dentiste")
Specialty.create(name: "Orthodontiste")
City.create(name: "Strasbourg")
City.create(name: "Paris")
City.create(name: "Strasbourg")
Doctor.create(first_name: "Jean", last_name: "Deschamps", zip_code: "67200", city_id: City.first.id)
Patient.create(first_name: "Olivia", last_name: "Rudolf", city_id: City.first.id)
Appointment.create(doctor_id: Doctor.first.id, patient_id: Patient.first.id, date: DateTime.now, city_id: City.first.id)

CityDog.create(city_name: "Strasbourg")
CityDog.create(city_name: "Paris")
Dog.create(name: "Hector", city_dog_id: CityDog.first.id)
Dog.create(name: "Doug", city_dog_id: CityDog.last.id)
Dogsitter.create(name: "Olivia", city_dog_id: CityDog.first.id)
Dogsitter.create(name: "Jonas", city_dog_id: CityDog.last.id)
Stroll.create(dog_id: Dog.first.id, dogsitter_id: Dogsitter.first.id, city_dog_id: CityDog.first.id, date: "05/05/2022")
Stroll.create(dog_id: Dog.last.id, dogsitter_id: Dogsitter.last.id, city_dog_id: CityDog.last.id, date: "06/05/2022")

