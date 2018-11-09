# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
Event.destroy_all


p1 = User.create(email: 'publisher1@test.com', password: 'publisher1@test.com', is_publisher: true)

s1 = User.create(email: 'subscriber1@test.com', password: 'subscriber1@test.com ', is_publisher: false)
s2 = User.create(email: 'subscriber2@test.com', password: 'subscriber2@test.com ', is_publisher: false)
s3 = User.create(email: 'subscriber3@test.com', password: 'subscriber3@test.com ', is_publisher: false)


Event.create(user_id: p1.id, name: 'Event1')
Event.create(user_id: p1.id, name: 'Event2')
Event.create(user_id: p1.id, name: 'Event3')
