# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.all.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('users') #commande pour reset l'id
Gossip.all.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('gossips') #commande pour reset l'id

10.times do
	u = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, age: Faker::Number.between(from: 18, to: 40))
	u.email = u.first_name + '_' + u.last_name + '@mail.com'
	u.save
end

puts "User created"

20.times do
	g = Gossip.create(title: Faker::Book.title, content: Faker::Quote.most_interesting_man_in_the_world, user_id: rand(1..10))
end

puts "Gossip created"
