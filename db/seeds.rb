# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# user = User.create!({email: "peoplenamed@gmail.com", password: "HelloWorld"})
user = User.first
person = Person.create!({first_name: "Peter", last_name: "Black", user_id: user.id})
phone = PhoneNumber.create!({user_id: user.id, person_id: person.id, phone_number: 8607134045, carrier: "att"})