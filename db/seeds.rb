require 'uri'
OpenURI::Buffer.send :remove_const, 'StringMax' if OpenURI::Buffer.const_defined?('StringMax')
OpenURI::Buffer.const_set 'StringMax', 0

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
             address: "Rua miguel de frias 201 niteroi",
             role: "donor",
             description: "doador",
             phone: "8694557868",
             password: "123123")

u2 = User.create!(name: "joao",
             email: "joao@email.com",
             address: "Praça da Bandeira Rio de Janeiro",
             role: "donor",
             description: "doador",
             phone: "21967808889",
             password: "123123")

u3 = User.create!(name: "pedro",
             email: "pedro@email.com",
             address: "Praça Onze Rio de Janeiro",
             role: "donor",
             description: "doador",
             phone: "21967808889",
             password: "123123")

u4 = User.create!(name: "Associação Beneficente Sol de Maria",
             email: "maria@email.com",
             address: "Rua Maria do Carmo 151 Rio de Janeiro",
             role: "receiver",
             description: "Instituição de apoio a comunidades em condição de risco",
             phone: "21994418311",
             password: "123123")

u5 = User.create!(name: "Todos Pelas Comunidades",
             email: "joana@email.com",
             address: "Praça Maracanã",
             role: "receiver",
             description: "Todos Pelas Comunidades é uma iniciativa do Grupo Cultura Urbana promovendo a transformação e inclusão social por meio da arte, da cultura, do esporte e da educação, e mobiliza pessoas e empresas a se unirem e arrecadarem fundos para compras de materiais e alimentos para atender centenas de famílias de várias comunidades",
             phone: "21999397450",
             password: "123123")


u6 = User.create!(name: "Solar + Você",
             email: "solar@email.com",
             address: "Rua conselheiro Ferraz 50 Rio de Janeiro",
             role: "receiver",
             description: "",
             phone: "21999397450",
             password: "123123")

u7 = User.create!(name: "Orquestra Maré do Amanhã",
             email: "mare@email.com",
             address: "Rua Teixeira Ribeiro 703 Rio de Janeiro",
             role: "receiver",
             description: "Educando e ajudando as comunidades por meio da música",
             phone: "21994418311",
             password: "123123")

u8 = User.create!(name: "Mundo Novo",
             email: "mundo@email.com",
             address: "Rua Adolfo de Albuquerque 109 Mesquita",
             role: "receiver",
             description: "Mundo Novo é uma instituição social sem fins lucrativos localizada na comunidade da Chatuba de Mesquita",
             phone: "21994418311",
             password: "123123")

u9 = User.create!(name: "Santuário Cristo Redentor",
             email: "cristo@email.com",
             address: "R. Eng. Veiga Brito 87 Rio de Janeiro",
             role: "receiver",
             description: "Nossas doações são entregues a famílias em situação de vulnerabilidade social e de várias instituições sociais, como: o Asilo Socorrinho, a Toca de Assis, as Irmãs Missionárias da Caridade, a Fraternidade O Caminho",
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
             address: "Rua Almirante Alexandrino 1316",
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

url = "https://res.cloudinary.com/ddm2vkpg7/image/upload/v1592058436/guardaroupa_fub9dn.jpg"
filename = File.basename(URI.parse(url).path)
file = URI.open(url)
d1.photo.attach(io: file, filename: filename)
d1.save!

d2 = Donation.create!(name: "o hobbit",
             description: "epico",
             category_id: c2.id,
             user_id: u2.id,
             status: "open")

url = "https://res.cloudinary.com/ddm2vkpg7/image/upload/v1592058565/ohobbit_w3oljy.jpg"
filename = File.basename(URI.parse(url).path)
file = URI.open(url)
d2.photo.attach(io: file, filename: filename)
d2.save!

d3 = Donation.create!(name: "moleton",
             description: "camisa",
             category_id: c3.id,
             user_id: u3.id,
             status: "open")

url = "https://res.cloudinary.com/ddm2vkpg7/image/upload/v1592059124/moleton-elvis-com-bolso-e-capuz_9763_stbl95.jpg"
filename = File.basename(URI.parse(url).path)
file = URI.open(url)
d3.photo.attach(io: file, filename: filename)
d3.save!

d4 = Donation.create!(name: "batedeira",
             description: "branca",
             category_id: c1.id,
             user_id: u2.id,
             status: "open")

url = "https://res.cloudinary.com/ddm2vkpg7/image/upload/v1592058661/batedeira-antiga-walita-funcionando-D_NQ_NP_972184-MLB27648876321_062018-F_e55vng.jpg"
filename = File.basename(URI.parse(url).path)
file = URI.open(url)
d4.photo.attach(io: file, filename: filename)
d4.save!

d5 = Donation.create!(name: "Escrivaninha",
             description: "Marrom, pouco uso, tamanho padrão",
             category_id: c1.id,
             user_id: u3.id,
             status: "open")

url = "https://res.cloudinary.com/ddm2vkpg7/image/upload/v1591922314/moqkt0romo9xu6svqb5qh44u7rro.jpg"
filename = File.basename(URI.parse(url).path)
file = URI.open(url)
d5.photo.attach(io: file, filename: filename)
d5.save!

d6 = Donation.create!(name: "Cama",
             description: "Cama de solteiro, com tabuas de madeira",
             category_id: c1.id,
             user_id: u2.id,
             status: "open")

url = "https://res.cloudinary.com/ddm2vkpg7/image/upload/v1592058728/images_sppooz.jpg"
filename = File.basename(URI.parse(url).path)
file = URI.open(url)
d6.photo.attach(io: file, filename: filename)
d6.save!

d7 = Donation.create!(name: "Vestido",
             description: "Pouco usado, perfeito para ir a igreja",
             category_id: c3.id,
             user_id: u1.id,
             status: "open")

url = "https://res.cloudinary.com/ddm2vkpg7/image/upload/v1592058778/1000053633C6099PP_1_kqxsdr.jpg"
filename = File.basename(URI.parse(url).path)
file = URI.open(url)
d7.photo.attach(io: file, filename: filename)
d7.save!

d8 = Donation.create!(name: "Casaco",
             description: "Casaco de inverno, bem quente",
             category_id: c3.id,
             user_id: u2.id,
             status: "open")

url = "https://res.cloudinary.com/ddm2vkpg7/image/upload/v1592058908/casaco-la-batida-xadrez-preto-com-capuz_529600_600_7_ct2lao.jpg"
filename = File.basename(URI.parse(url).path)
file = URI.open(url)
d8.photo.attach(io: file, filename: filename)
d8.save!

d9 = Donation.create!(name: "Jaqueta",
             description: "Muito estilosa",
             category_id: c3.id,
             user_id: u2.id,
             status: "open")

url = "https://res.cloudinary.com/ddm2vkpg7/image/upload/v1592058960/e8476d14c1_jrwsb2.jpg"
filename = File.basename(URI.parse(url).path)
file = URI.open(url)
d9.photo.attach(io: file, filename: filename)
d9.save!

d10 = Donation.create!(name: "Blusa",
             description: "Blusa social, perfeita para trabalhar",
             category_id: c3.id,
             user_id: u2.id,
             status: "open")

url = "https://res.cloudinary.com/ddm2vkpg7/image/upload/v1592059036/961b2aadd6_vx58vt.jpg"
filename = File.basename(URI.parse(url).path)
file = URI.open(url)
d10.photo.attach(io: file, filename: filename)
d10.save!

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

# ReceiverProfile.create!(user_id: u4.id,
#              category_id: c1.id)

ReceiverProfile.create!(user_id: u4.id,
             category_id: c3.id)

# ReceiverProfile.create!(user_id: u4.id,
#              category_id: c3.id)

# ReceiverProfile.create!(user_id: u4.id,
#              category_id: c4.id)

# ReceiverProfile.create!(user_id: u5.id,
#              category_id: c1.id)

# ReceiverProfile.create!(user_id: u5.id,
#              category_id: c2.id)

ReceiverProfile.create!(user_id: u5.id,
             category_id: c1.id)

# ReceiverProfile.create!(user_id: u5.id,
#              category_id: c4.id)

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

