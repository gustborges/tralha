# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "destroying users"
User.destroy_all

puts "creating users"

 u1 = User.create!(name: "caio",
             email: "caio@email.com",
             address: "ladeira da gloria",
             role: "donor",
             description: "doador",
             phone: "12486956",
             password: "123123")

u2 = User.create!(name: "joao",
             email: "joao@email.com",
             address: "ladeira da joao",
             role: "donor",
             description: "doador",
             phone: "12486956",
             password: "123123")

u3 = User.create!(name: "pedro",
             email: "pedro@email.com",
             address: "ladeira da pedro",
             role: "donor",
             description: "doador",
             phone: "12486956",
             password: "123123")

u4 = User.create!(name: "maria",
             email: "maria@email.com",
             address: "ladeira da maria",
             role: "receiver",
             description: "receiver",
             phone: "16511656",
             password: "123123")

u5 = User.create!(name: "joana",
             email: "joana@email.com",
             address: "ladeira da joana",
             role: "receiver",
             description: "receiver",
             phone: "16511656",
             password: "123123")

puts "destroying Categories"
Category.destroy_all

puts "creating Categories"

c1 = Category.create!(name: "Móveis",
             description: "Móveis")

c2 = Category.create!(name: "Livros",
             description: "Livros")

c3 = Category.create!(name: "Roupas",
             description: "Roupas")

c4 = Category.create!(name: "Eletrônicos",
             description: "Eletrônicos")

c5 = Category.create!(name: "Brinquedos",
             description: "Brinquedos")

puts "destroying donations"
Donation.destroy_all

puts "creating donations"

d1 = Donation.create!(name: "guarda-roupa",
             description: "madeira",
             category_id: c1.id,
             user_id: u1.id,
             status: "open")

d2 = Donation.create!(name: "o senhor dos aneis",
             description: "epico",
             category_id: c2.id,
             user_id: u2.id,
             status: "open")

d3 = Donation.create!(name: "moleton",
             description: "camisa",
             category_id: c3.id,
             user_id: u3.id,
             status: "open")

d4 = Donation.create!(name: "batedeira",
             description: "branca",
             category_id: c1.id,
             user_id: u1.id,
             status: "open")

puts "destroying Tranfers"
Transfer.destroy_all

puts "creating Transfers"

Transfer.create!(user_id: u4.id,
             donation_id: d1.id,
             status: "open")

Transfer.create!(user_id: u5.id,
             donation_id: d2.id,
             status: "open")

puts "destroying receiver_profile"
ReceiverProfile.destroy_all

puts "creating Receiver_profiles"

ReceiverProfile.create!(user_id: u4.id,
             category_id: c1.id)

ReceiverProfile.create!(user_id: u5.id,
             category_id: c2.id)
