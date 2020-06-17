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

url = "https://res.cloudinary.com/ddm2vkpg7/image/upload/v1592351615/users/caio_s6zg2p.jpg"
filename = File.basename(URI.parse(url).path)
file = URI.open(url)
u1.save!
u1.photo.attach(io: file, filename: filename)

u2 = User.create!(name: "joao",
             email: "joao@email.com",
             address: "Praça da Bandeira Rio de Janeiro",
             role: "donor",
             description: "doador",
             phone: "21967808889",
             password: "123123")

url = "https://res.cloudinary.com/ddm2vkpg7/image/upload/v1592352292/users/joao_dro3tk.jpg"
filename = File.basename(URI.parse(url).path)
file = URI.open(url)
u2.save!
u2.photo.attach(io: file, filename: filename)

u3 = User.create!(name: "pedro",
             email: "pedro@email.com",
             address: "Praça Onze Rio de Janeiro",
             role: "donor",
             description: "doador",
             phone: "21967808889",
             password: "123123")

url = "https://res.cloudinary.com/ddm2vkpg7/image/upload/v1592352295/users/pedro_jg6ieg.jpg"
filename = File.basename(URI.parse(url).path)
file = URI.open(url)
u3.save!
u3.photo.attach(io: file, filename: filename)

u4 = User.create!(name: "Associação Beneficente Sol de Maria",
             email: "maria@email.com",
             address: "Rua Maria do Carmo 151 Rio de Janeiro",
             role: "receiver",
             description: "Instituição de apoio a comunidades em condição de risco",
             phone: "21994418311",
             password: "123123")

url = "https://res.cloudinary.com/ddm2vkpg7/image/upload/v1592351615/users/maria_wnrppk.jpg"
filename = File.basename(URI.parse(url).path)
file = URI.open(url)
u4.save!
u4.photo.attach(io: file, filename: filename)

u5 = User.create!(name: "Todos Pelas Comunidades",
             email: "joana@email.com",
             address: "Praça Maracanã",
             role: "receiver",
             description: "Todos Pelas Comunidades é uma iniciativa do Grupo Cultura Urbana promovendo a transformação e inclusão social por meio da arte, da cultura, do esporte e da educação, e mobiliza pessoas e empresas a se unirem e arrecadarem fundos para compras de materiais e alimentos para atender centenas de famílias de várias comunidades",
             phone: "21999397450",
             password: "123123")

url = "https://res.cloudinary.com/ddm2vkpg7/image/upload/v1592351615/users/joana_vfjwgm.jpg"
filename = File.basename(URI.parse(url).path)
file = URI.open(url)
u5.save!
u5.photo.attach(io: file, filename: filename)

u6 = User.create!(name: "Solar + Você",
             email: "solar@email.com",
             address: "Rua conselheiro Ferraz 50 Rio de Janeiro",
             role: "receiver",
             description: "",
             phone: "21999397450",
             password: "123123")

url = "https://res.cloudinary.com/ddm2vkpg7/image/upload/v1592351615/users/solar_nz29rj.jpg"
filename = File.basename(URI.parse(url).path)
file = URI.open(url)
u6.save!
u6.photo.attach(io: file, filename: filename)

u7 = User.create!(name: "Orquestra Maré do Amanhã",
             email: "mare@email.com",
             address: "Rua Teixeira Ribeiro 703 Rio de Janeiro",
             role: "receiver",
             description: "Educando e ajudando as comunidades por meio da música",
             phone: "21994418311",
             password: "123123")

url = "https://res.cloudinary.com/ddm2vkpg7/image/upload/v1592351615/users/mare_pfsrta.png"
filename = File.basename(URI.parse(url).path)
file = URI.open(url)
u7.save!
u7.photo.attach(io: file, filename: filename)

u8 = User.create!(name: "Mundo Novo",
             email: "mundo@email.com",
             address: "Rua Adolfo de Albuquerque 109 Mesquita",
             role: "receiver",
             description: "Mundo Novo é uma instituição social sem fins lucrativos localizada na comunidade da Chatuba de Mesquita",
             phone: "21994418311",
             password: "123123")

url = "https://res.cloudinary.com/ddm2vkpg7/image/upload/v1592352010/users/mundo_o2ekqd.png"
filename = File.basename(URI.parse(url).path)
file = URI.open(url)
u8.save!
u8.photo.attach(io: file, filename: filename)

u9 = User.create!(name: "Santuário Cristo Redentor",
             email: "cristo@email.com",
             address: "R. Eng. Veiga Brito 87 Rio de Janeiro",
             role: "receiver",
             description: "Nossas doações são entregues a famílias em situação de vulnerabilidade social e de várias instituições sociais, como: o Asilo Socorrinho, a Toca de Assis, as Irmãs Missionárias da Caridade, a Fraternidade O Caminho",
             phone: "21994418311",
             password: "123123")

url = "https://res.cloudinary.com/ddm2vkpg7/image/upload/v1592351615/users/cristo_bxemfj.webp"
filename = File.basename(URI.parse(url).path)
file = URI.open(url)
u9.save!
u9.photo.attach(io: file, filename: filename)


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
             description: "Armário de madeira semi-novo, usado poucas vezes, precisa de pintura nova. Vale também dar uma revisada nos pés que estão um pouco bambas - mas ainda servem.",
             category_id: c1.id,
             user_id: u1.id,
             status: "open")

url = "https://res.cloudinary.com/ddm2vkpg7/image/upload/v1592058436/guardaroupa_fub9dn.jpg"
filename = File.basename(URI.parse(url).path)
file = URI.open(url)
d1.save!
d1.photo.attach(io: file, filename: filename)

d2 = Donation.create!(name: "O Hobbit",
             description: "Livro épico. Já li duas vezes e agora já chega - não curto mais livros de fantasia. É de quem quiser.",
             category_id: c2.id,
             user_id: u2.id,
             status: "open")

url = "https://res.cloudinary.com/ddm2vkpg7/image/upload/v1592058565/ohobbit_w3oljy.jpg"
filename = File.basename(URI.parse(url).path)
file = URI.open(url)
d2.save!
d2.photo.attach(io: file, filename: filename)

d3 = Donation.create!(name: "Moleton",
             description: "Casaco moleton pouquíssimo usado, tamanho P.",
             category_id: c3.id,
             user_id: u3.id,
             status: "open")

url = "https://res.cloudinary.com/ddm2vkpg7/image/upload/v1592059124/moleton-elvis-com-bolso-e-capuz_9763_stbl95.jpg"
filename = File.basename(URI.parse(url).path)
file = URI.open(url)
d3.save!
d3.photo.attach(io: file, filename: filename)

d4 = Donation.create!(name: "Batedeira",
             description: "Batedeira branca funcionando. Era da minha avó! Ela fazia vitaminas deliciosas. Quando eu era pequena... joguei um hamster lá dentro e deu ruim.",
             category_id: c1.id,
             user_id: u2.id,
             status: "open")

url = "https://res.cloudinary.com/ddm2vkpg7/image/upload/v1592058661/batedeira-antiga-walita-funcionando-D_NQ_NP_972184-MLB27648876321_062018-F_e55vng.jpg"
filename = File.basename(URI.parse(url).path)
file = URI.open(url)
d4.save!
d4.photo.attach(io: file, filename: filename)

d5 = Donation.create!(name: "Escrivaninha",
             description: "Marrom, pouco uso, tamanho padrão. Não tem arranhões, nem cupim. Estou doando devido a uma mudança. Não cabe mais em casa.",
             category_id: c1.id,
             user_id: u3.id,
             status: "open")

url = "https://res.cloudinary.com/ddm2vkpg7/image/upload/v1591922314/moqkt0romo9xu6svqb5qh44u7rro.jpg"
filename = File.basename(URI.parse(url).path)
file = URI.open(url)
d5.save!
d5.photo.attach(io: file, filename: filename)

d6 = Donation.create!(name: "Cama",
             description: "Cama de solteiro, com tábuas de madeira. Está em bom estado e pode servir a alguém. Hoje e estou casadíssima, então não tem mais uso.",
             category_id: c1.id,
             user_id: u2.id,
             status: "open")

url = "https://res.cloudinary.com/ddm2vkpg7/image/upload/v1592058728/images_sppooz.jpg"
filename = File.basename(URI.parse(url).path)
file = URI.open(url)
d6.save!
d6.photo.attach(io: file, filename: filename)

d7 = Donation.create!(name: "Vestido",
             description: "Pouco usado, perfeito para ir a igreja. Está sem buracos, rasgos ou qualquer mancha. Só lavar e usar.",
             category_id: c3.id,
             user_id: u1.id,
             status: "open")

url = "https://res.cloudinary.com/ddm2vkpg7/image/upload/v1592058778/1000053633C6099PP_1_kqxsdr.jpg"
filename = File.basename(URI.parse(url).path)
file = URI.open(url)
d7.save!
d7.photo.attach(io: file, filename: filename)

d8 = Donation.create!(name: "Casaco",
             description: "Casaco de inverno, bem quente. Vale usar inclusive para regiões mais frias no sul do país ou viagem ao exterior. Aguentei -2 abaixo de zero... ou seja, funciona.",
             category_id: c3.id,
             user_id: u2.id,
             status: "open")

url = "https://res.cloudinary.com/ddm2vkpg7/image/upload/v1592058908/casaco-la-batida-xadrez-preto-com-capuz_529600_600_7_ct2lao.jpg"
filename = File.basename(URI.parse(url).path)
file = URI.open(url)
d8.save!
d8.photo.attach(io: file, filename: filename)

d9 = Donation.create!(name: "Jaqueta",
             description: "Muito estilosa",
             category_id: c3.id,
             user_id: u2.id,
             status: "open")

url = "https://res.cloudinary.com/ddm2vkpg7/image/upload/v1592058960/e8476d14c1_jrwsb2.jpg"
filename = File.basename(URI.parse(url).path)
file = URI.open(url)
d9.save!
d9.photo.attach(io: file, filename: filename)

d10 = Donation.create!(name: "Blusa",
             description: "Blusa social, perfeita para trabalhar. Linda e pouco usada, porque engordei e não cabe mais.",
             category_id: c3.id,
             user_id: u2.id,
             status: "open")

url = "https://res.cloudinary.com/ddm2vkpg7/image/upload/v1592059036/961b2aadd6_vx58vt.jpg"
filename = File.basename(URI.parse(url).path)
file = URI.open(url)
d10.save!
d10.photo.attach(io: file, filename: filename)

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

