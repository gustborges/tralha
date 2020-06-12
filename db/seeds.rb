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
             phone: "8694557868",
             password: "123123")

u2 = User.create!(name: "joao",
             email: "joao@email.com",
             address: "ladeira da joao",
             role: "donor",
             description: "doador",
             phone: "21967808889",
             password: "123123")

u3 = User.create!(name: "pedro",
             email: "pedro@email.com",
             address: "ladeira da pedro",
             role: "donor",
             description: "doador",
             phone: "21967808889",
             password: "123123")

u4 = User.create!(name: "maria",
             email: "maria@email.com",
             address: "ladeira da maria",
             role: "receiver",
             description: "receiver",
             phone: "21994418311",
             password: "123123")

u5 = User.create!(name: "joana",
             email: "joana@email.com",
             address: "ladeira da joana",
             role: "receiver",
             description: "receiver",
             phone: "21999397450",
             password: "123123")


u6 = User.create!(name: "Camila",
             email: "camila@email.com",
             address: "ladeira da camila",
             role: "receiver",
             description: "receiver",
             phone: "21999397450",
             password: "123123")

u7 = User.create!(name: "Fernanda",
             email: "fernanda@email.com",
             address: "ladeira da fernanda",
             role: "receiver",
             description: "receiver",
             phone: "21994418311",
             password: "123123")

u8 = User.create!(name: "Amanda",
             email: "amanda@email.com",
             address: "ladeira da amanda",
             role: "receiver",
             description: "receiver",
             phone: "21994418311",
             password: "123123")

u9 = User.create!(name: "Laura",
             email: "laura@email.com",
             address: "ladeira da laura",
             role: "receiver",
             description: "receiver",
             phone: "21994418311",
             password: "123123")


u10 = User.create!(name: "Casa do Lixo",
             email: "casadolixo@email.com",
             address: "Praça Maracanã",
             role: "recycler",
             description: "Reciclamos qualquer tipo de lixo.",
             phone: "21999397250",
             password: "123123")

u11 = User.create!(name: "Recycle City",
             email: "recyclecity@email.com",
             address: "Rua Senador Dantas 74",
             role: "recycler",
             description: "Nosso galpão é especializado em artigos de alumínio como latas e ferro velho.",
             phone: "21999395450",
             password: "123123")

u12 = User.create!(name: "Galpão Santa Teresa",
             email: "galpaostateresa@email.com",
             address: "Rua Almirante Alexandrino, 1316",
             role: "recycler",
             description: "Um espaço de reciclagem bem perto do centro do Rio. Aceitamos plásticos e tecidos.",
             phone: "21999390450",
             password: "123123")

u13 = User.create!(name: "Ladeira Trash",
             email: "ladeiratrash@email.com",
             address: "Ladeira da Glória",
             role: "recycler",
             description: "Aqui você pode deixar seu ferro velho. Tratamos também lixo eletrônico e descartamos pilhas e baterias da forma mais adequada.",
             phone: "21999497450",
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
             description: "Armario de madeira semi-novo, usado poucas vezes, precisa de pintura nova",
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

d5 = Donation.create!(name: "Escrivaninha",
             description: "Marrom, pouco uso, tamanho padrão",
             category_id: c1.id,
             user_id: u1.id,
             status: "open")


d6 = Donation.create!(name: "Cama",
             description: "Cama de solteiro, com tabuas de madeira",
             category_id: c1.id,
             user_id: u1.id,
             status: "open")

d7 = Donation.create!(name: "Vestido",
             description: "Pouco usado, perfeito para ir a igreja",
             category_id: c3.id,
             user_id: u2.id,
             status: "open")

d8 = Donation.create!(name: "Casaco",
             description: "Casaco de inverno, bem quente",
             category_id: c3.id,
             user_id: u2.id,
             status: "open")

d9 = Donation.create!(name: "Jaqueta",
             description: "Muito estilosa",
             category_id: c3.id,
             user_id: u2.id,
             status: "open")

d10 = Donation.create!(name: "Blusa",
             description: "Blusa social, perfeita para trabalhar",
             category_id: c3.id,
             user_id: u2.id,
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

ReceiverProfile.create!(user_id: u6.id,
             category_id: c1.id)

ReceiverProfile.create!(user_id: u7.id,
             category_id: c1.id)

ReceiverProfile.create!(user_id: u8.id,
             category_id: c1.id)

ReceiverProfile.create!(user_id: u9.id,
             category_id: c1.id)




puts "destroying notifications"
Notification.destroy_all

puts "creating notifications"

Notification.create!(user_id: u4.id,
  title: "Nova doação disponível: #{d1.name} de #{u1.name}",
  read: false,
  recipient: "receiver"
)

Notification.create!(user_id: u5.id,
  title: "Nova doação disponível: #{d2.name} de #{u2.name}",
  read: false,
  recipient: "receiver"
)

Notification.create!(user_id: u6.id,
  title: "Nova doação disponível: #{d2.name} de #{u2.name}",
  read: false,
  recipient: "receiver"
)

Notification.create!(user_id: u7.id,
  title: "Nova doação disponível: #{d2.name} de #{u2.name}",
  read: false,
  recipient: "receiver"
)

Notification.create!(user_id: u8.id,
  title: "Nova doação disponível: #{d2.name} de #{u2.name}",
  read: false,
  recipient: "receiver"
)

Notification.create!(user_id: u9.id,
  title: "Nova doação disponível: #{d2.name} de #{u2.name}",
  read: false,
  recipient: "receiver"
)

Notification.create!(user_id: u1.id,
  title: "#{d2.name.capitalize} ainda não recebeu pedidos. Veja como reciclar!",
  read: false,
  recipient: "donnor"
)

