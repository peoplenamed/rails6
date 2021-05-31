# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create!({email: "peoplenamed@gmail.com", password: "HelloWorld", firstname: "Peter", lastname:"Black", address1:"99 Fork Lane", zip: "06001", city: "Avon", state:"CT"})
user2 = User.create!({email: "admin@CoolNewApp.com", password: "HelloWorld", firstname: "Peter", lastname:"Black", address1:"99 Fork Lane", zip: "06001", city: "Avon", state:"CT"})

m = Message.new
m.from_user_id = user2.id
m.to_user_id = user1.id
m.subject = "Update 0.2.0.0.1 has been released"
m.text = "This update comes with many improvements. Modals and alerts are working. :)"
m.save

m = Message.new
m.from_user_id = user2.id
m.to_user_id = user1.id
m.subject = "Account Secure"
m.text = "Account credentials have been secured using encryption"
m.save

m = Message.new
m.from_user_id = user2.id
m.to_user_id = user1.id
m.subject = "Updates coming soon."
m.text = "Many updates coming soon."
m.save

m = Message.new
m.from_user_id = user2.id
m.to_user_id = user1.id
m.subject = "Out of memory error."
m.text = "There was an issue with the amount of memory that was allocated."
m.save
