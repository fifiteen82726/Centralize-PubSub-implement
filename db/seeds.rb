# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Publisher.destroy_all
Subscriber.destroy_all

p1 = Publisher.create(name: 'Publisher_1')
Subscriber.create(name: 'Subscriber_1')
Subscriber.create(name: 'Subscriber_2')


Event.create(publisher_id: p1.id, name: 'Event1')
Event.create(publisher_id: p1.id, name: 'Event2')
Event.create(publisher_id: p1.id, name: 'Event3')

