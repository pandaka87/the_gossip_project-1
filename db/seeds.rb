# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

# Générer 10 nouveaux users
# User.destroy_all

# 10.times do
#   User.create!(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name,description: Faker::Lorem.paragraph(sentence_count: 2),email: Faker::Internet.email,age: Faker::Number.number(digits: 2), city_id: City.all.shuffle.last.id)
# end

# Générer 10 nouvelles villes (liées à des users)
# City.destroy_all

# 10.times do
#   City.create!(name: Faker::Address.unique.city, zip_code: Faker::Address.unique.zip_code)
# end

# Générer 20 nouveaux gossips (liées avec leur auteur = user)
# Gossip.destroy_all 

# 20.times do
#   Gossip.create!(title: Faker::Book.title,content: Faker::Quote.yoda, user_id: User.all.shuffle.last.id)
# end

# Générer 10 nouveaux tags (et les lier à des gossips)
# Tag.destroy_all

# => puis Gossip.all.each { |p| p.update(tag_id: rand(1..20)) } pour ajouter nos tags aux gossips déjà créés


# Générer 15 nouveaux private message (et les lier à 1 expéditeur chacun + 1 ou plusieurs destinataire(s))
# PrivateMessage.destroy_all

# 15.times do
#   PrivateMessage.create!(content: Faker::Lorem.paragraph(sentence_count: 2), sender_id: User.all.shuffle.last.id, recipient_id: User.all.shuffle.last.id)
# end
