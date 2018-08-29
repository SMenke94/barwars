Bar.destroy_all
Type.destroy_all
Deal.destroy_all

# A USER
puts 'Creating user'
user = User.new(
  full_name: "Amanda Schjørmann",
  email: "amandaschjoermann@gmail.com",
  password: "123456",
  photo: "https://scontent-amt2-1.xx.fbcdn.net/v/t1.0-9/32497592_10216332285839012_7014404072291696640_n.jpg?_nc_cat=0&oh=1f254c63ad7b10d964f94d0be7bc521e&oe=5BF5D6C4"
  )
user.save!
puts '1 user done'

# CREATING 5 TYPES

puts 'Creating all types'
beer = Type.new(name: "Beer")
beer.fa_icon = "fas fa-beer"
beer.save!

happy_hour = Type.new(name: "Happy Hour")
happy_hour.fa_icon = "fas fa-glass-martini"
happy_hour.save!

open_bar = Type.new(name: "Open Bar")
open_bar.fa_icon = "fas fa-wine-glass-alt"
open_bar.save!

special_offer = Type.new(name: "Special Offer")
special_offer.fa_icon = "fas fa-bolt"
special_offer.save!

shots = Type.new(name: "Shots")
shots.fa_icon = "fab fa-bitbucket"
shots.save!
puts 'Finished!'

# CREATING THE BARS

puts 'Creating bars...'
mexibar = Bar.new(
  name: "Mexibar",
  address: "Elmegade 27, Nørrebro",
  photo: "https://scontent-amt2-1.xx.fbcdn.net/v/t31.0-8/1898684_649156511799288_877178005_o.jpg?_nc_cat=0&oh=289d074f9f9f3323f5a4b33bf458f5df&oe=5BFEDA56",
  phone_number: "35377766",
  website: "http://mexibar.com/",
  smoking: false,
  dancing: false
)
mexibar.save!
puts "Mexi bar done"

kassen = Bar.new(
  name: "Kassen",
  address: "Nørrebrogade 18B, Nørrebro",
  photo: "https://scontent-frx5-1.xx.fbcdn.net/v/t31.0-8/459576_343499565688592_1858704733_o.jpg?_nc_cat=0&oh=c6e6bc5c4458d011d6d3099de9c4355e&oe=5C395B05",
  phone_number: "42572200",
  email: "cocktail@kassen.dk",
  website: "http://www.kassen.dk/",
  smoking: false,
  dancing: true
)
kassen.save!
puts "Kassen done"

plenum = Bar.new(
  name: "Café Plenum",
  address: "Sankt Hans Torv 3, Nørrebro",
  photo: "https://scontent-frx5-1.xx.fbcdn.net/v/t1.0-9/36389757_1632891346809842_5189808545117241344_o.jpg?_nc_cat=0&oh=a26885e9354ce6c4aee299c7428c7358&oe=5C2D0672",
  phone_number: "35370277",
  email: "info@cafeplenum.dk",
  website: "http://www.cafeplenum.dk/",
  smoking: false,
  dancing: false
)
plenum.save!
puts "PLenum done"

temple = Bar.new(
  name: "Temple Bar",
  address: "Nørrebrogade 48, Nørrebro",
  photo: "http://photos.wikimapia.org/p/00/04/65/05/22_big.jpg",
  phone_number: "35374414",
  email: "templebar2200@gmail.com",
  smoking: false,
  dancing: true
)
temple.save!
puts "Temple done"

p2 = Bar.new(
  name: "p2 by Malbeck",
  address: "Birkegade 2, Nørrebro",
  photo: "https://scontent-frx5-1.xx.fbcdn.net/v/t31.0-8/13147824_467547666778192_3677405407674264771_o.jpg?_nc_cat=0&oh=36c12324d910cc3e193751dad7773809&oe=5C0139AD",
  phone_number: "32215215",
  email: "hhl@malbeck.dk",
  website: "http://malbeck.dk",
  smoking: false,
  dancing: false
)
p2.save!
puts "P2 done"

mellemrummet = Bar.new(
  name: "MellemRummet",
  address: "Ravnsborggade 11, Nørrebro",
  photo: "https://theculturetrip.com/wp-content/uploads/2017/03/globalh-1024x683.jpg",
  phone_number: "88713652",
  email: "mellemrummetbar@gmail.com",
  website: "https://www.ms.dk/mellemrummet",
  smoking: false,
  dancing: false
)
mellemrummet.save!
puts "Mellemrummet"

ølbaren = Bar.new(
  name: "Ølbaren",
  address: "Elmegade 2, Nørrebro",
  photo: "https://files.guidedanmark.org/files/382/382_9888.jpg",
  phone_number: "35354534",
  email: "mail@oelbaren.dk",
  website: "http://oelbaren.dk",
  smoking: false,
  dancing: false
)
ølbaren.save!
puts "Ølbaren"

scala = Bar.new(
  name: "Det Ny Scala",
  address: "Ravnsborggade 8, Nørrebro",
  photo: "http://www.vinkkbh.dk/wp-content/uploads/2016/10/Det-ny-Scala-Oliver-Holm-900x600.jpg",
  phone_number: "35353042",
  email: "detnyscala@gmail.com",
  smoking: false,
  dancing: false
)
scala.save!
puts "Scala"

kattens = Bar.new(
  name: "Kattens Bodega",
  address: "Fælledvej 19, Nørrebro",
  photo: "https://s3-media3.fl.yelpcdn.com/bphoto/drqP5Gd0sVrFV117ktjXkA/348s.jpg",
  phone_number: "35377771",
  smoking: true,
  dancing: false
)
kattens.save!
puts "Kattens"

glade_gris = Bar.new(
  name: "Den Glade Gris",
  address: "Lille Kannikestræde 3, København",
  photo: "https://spiseliv.dk/images/profiles/full/531f0029dcd93.jpg",
  phone_number: "31737305",
  email: "kbh@dengladegris.dk",
  website: "https://dengladegris.dk/",
  smoking: false,
  dancing: true
)
glade_gris.save!
puts "Den Glade Gris done"

nørre_bodega = Bar.new(
  name: "Nørre Bodega",
  address: "Nørrebrogade 152, Nørrebro",
  photo: "https://scontent-ams3-1.xx.fbcdn.net/v/t31.0-8/21457539_1381133898650877_5782360464845686183_o.jpg?_nc_cat=0&oh=410b495a504f61a54d05e2db72a0a3f2&oe=5C013AAF",
  phone_number: "35853926",
  smoking: true,
  dancing: false
)
nørre_bodega.save!
puts "Nørre Bodega done"

mini_bar = Bar.new(
  name: "Mini Bar",
  address: "Gothersgade 35, København",
  photo: "https://ekstrabladet.dk/incoming/article5344287.ece/IMAGE_ALTERNATES/relationBig_910/Ulykke%20p%C3%A5%20Mini%20Bar",
  phone_number: "33153305",
  email: "info@mini-bar.dk",
  website: "http://www.mini-bar.dk",
  smoking: false,
  dancing: true
)
mini_bar.save!
puts "Mini Bar done"

wallstreet = Bar.new(
  name: "Wall Street Pub",
  address: "Gothersgade 2, København",
  photo: "https://scontent-ams3-1.xx.fbcdn.net/v/t1.0-9/432229_387964167886771_1830919014_n.jpg?_nc_cat=0&oh=291900c1b61ab191d9e3cc09aac4d901&oe=5BF5A0CE",
  phone_number: "33147742",
  email: "info@wallstreetpub.dk",
  website: "https://wallstreetpub.dk/",
  smoking: false,
  dancing: true
)
wallstreet.save!
puts "Wallstreet done"

da_vinci = Bar.new(
  name: "Da Vinci Bar",
  address: "Gothersgade 19, København",
  photo: "https://d3ulizuhtuf022.cloudfront.net/images/270/2506f5a77e444d2880a6852dabdf8edc.png",
  phone_number: "69692033",
  email: "info@davincibar.dk",
  website: "http://www.davincibar.dk",
  smoking: false,
  dancing: true
)
da_vinci.save!
puts "Da Vinci Bar done"

andys = Bar.new(
  name: "Andy's Bar",
  address: "Gothersgade 33B, København",
  photo: "https://d3ulizuhtuf022.cloudfront.net/images/270/2506f5a77e444d2880a6852dabdf8edc.png",
  phone_number: "33120646",
  email: "info@andysbar.dk",
  website: "http://www.andysbar.dk",
  smoking: true,
  dancing: false
)
andys.save!
puts "Andys done"

dupong = Bar.new(
  name: "Dupong",
  address: "Griffenfeldsgade 52, Nørrebro",
  photo: "https://i.ytimg.com/vi/vU6jGiyfxWk/maxresdefault.jpg",
  phone_number: "33120646",
  email: "info@andysbar.dk",
  website: "http://www.andysbar.dk",
  smoking: false,
  dancing: false
)
dupong.save!
puts "Dupong done"

det_rene_glas = Bar.new(
  name: "Det Rene Glas",
  address: "Nørrebrogade 64, Nørrebro",
  photo: "http://www.detreneglas.dk/assets/images/autogen/a_Billede_00409.jpg",
  phone_number: "40203453",
  website: "http://www.detreneglas.dk",
  smoking: true,
  dancing: false
)
det_rene_glas.save!
puts "Det Rene Glas done"

puts 'FINISHED'


puts 'Creating deals'
Time.zone = 'Europe/Copenhagen'

# PLENUM deals

7.times do |n|
  start_time = DateTime.parse("2018-08-26 10:00:00 +0200") + n
  end_time = DateTime.parse("2018-08-26 23:59:00 +0200") + n
  deal = Deal.new(description: "10\% student discount", start_time: start_time, end_time: end_time)
  deal.bar = plenum
  deal.type = special_offer
  deal.save!
end

7.times do |n|
  start_time = DateTime.parse("2018-08-26 10:00:00 +0200") + n
  end_time = DateTime.parse("2018-08-26 23:59:00 +0200") + n
  deal = Deal.new(description: "5 shots!", start_time: start_time, end_time: end_time, price: 100)
  deal.bar = plenum
  deal.type = shots
  deal.save!
end

# TEMPLE BAR deals

7.times do |n|
  start_time = DateTime.parse("2018-08-26 15:00:00 +0200") + n
  end_time = DateTime.parse("2018-08-26 23:59:00 +0200") + n
  deal = Deal.new(description: "10 shots", start_time: start_time, end_time: end_time, price: 150)
  deal.bar = temple
  deal.type = shots
  deal.save!
end

7.times do |n|
  start_time = DateTime.parse("2018-08-26 15:00:00 +0200") + n
  end_time = DateTime.parse("2018-08-26 23:59:00 +0200") + n
  deal = Deal.new(description: "3 Jägerbombs", start_time: start_time, end_time: end_time, price: 100)
  deal.bar = temple
  deal.type = shots
  deal.save!
end

4.times do |n|
  start_time = DateTime.parse("2018-08-27 15:00:00 +0200") + n
  end_time = DateTime.parse("2018-08-27 23:59:00 +0200") + n
  deal = Deal.new(description: "Big draft beer for students", start_time: start_time, end_time: end_time, price: 35)
  deal.bar = temple
  deal.type = beer
  deal.save!
end

start_time = DateTime.parse("2018-08-31 15:00:00 +0200")
end_time = DateTime.parse("2018-08-31 22:00:00 +0200")
deal = Deal.new(description: "Big draft beer for students", start_time: start_time, end_time: end_time, price: 35)
deal.bar = temple
deal.type = beer
deal.save!

start_time = DateTime.parse("2018-09-01 15:00:00 +0200")
end_time = DateTime.parse("2018-09-01 22:00:00 +0200")
deal = Deal.new(description: "Big draft beer for students", start_time: start_time, end_time: end_time, price: 35)
deal.bar = temple
deal.type = beer
deal.save!

start_time = DateTime.parse("2018-09-02 15:00:00 +0200")
end_time = DateTime.parse("2018-09-02 23:59:00 +0200")
deal = Deal.new(description: "Big draft beer for students", start_time: start_time, end_time: end_time, price: 35)
deal.bar = temple
deal.type = beer
deal.save!

# P2 deals

4.times do |n|
  start_time = DateTime.parse("2018-08-27 16:00:00 +0200") + n
  end_time = DateTime.parse("2018-08-27 18:00:00 +0200") + n
  deal = Deal.new(description: "50\% off the glass menu", start_time: start_time, end_time: end_time)
  deal.bar = p2
  deal.type = happy_hour
  deal.save!
end

# KASSEN deals

start_time = DateTime.parse("2018-08-28 19:00:00 +0200")
end_time = DateTime.parse("2018-08-28 23:59:00 +0200")
deal = Deal.new(description: "3 cocktails", start_time: start_time, end_time: end_time, price: 100)
deal.bar = kassen
deal.type = special_offer
deal.save!

start_time = DateTime.parse("2018-08-29 20:00:00 +0200")
end_time = DateTime.parse("2018-08-29 23:59:00 +0200")
deal = Deal.new(description: "All drinks, all night", start_time: start_time, end_time: end_time, price: 250)
deal.bar = kassen
deal.type = open_bar
deal.save!

start_time = DateTime.parse("2018-08-30 20:00:00 +0200")
end_time = DateTime.parse("2018-08-30 23:59:00 +0200")
deal = Deal.new(description: "All night long", start_time: start_time, end_time: end_time)
deal.bar = kassen
deal.type = happy_hour
deal.save!

start_time = DateTime.parse("2018-08-31 16:00:00 +0200")
end_time = DateTime.parse("2018-08-31 22:00:00 +0200")
deal = Deal.new(description: "All drinks on the menu", start_time: start_time, end_time: end_time)
deal.bar = kassen
deal.type = happy_hour
deal.save!

start_time = DateTime.parse("2018-09-01 20:00:00 +0200")
end_time = DateTime.parse("2018-09-01 22:00:00 +0200")
deal = Deal.new(description: "All drinks on the menu", start_time: start_time, end_time: end_time)
deal.bar = kassen
deal.type = happy_hour
deal.save!

# MELLEMRUMMET deals

7.times do |n|
  start_time = DateTime.parse("2018-08-26 09:00:00 +0200") + n
  end_time = DateTime.parse("2018-08-26 23:59:00 +0200") + n
  deal = Deal.new(description: "5 shots", start_time: start_time, end_time: end_time, price: 90)
  deal.bar = mellemrummet
  deal.type = shots
  deal.save!
end

7.times do |n|
  start_time = DateTime.parse("2018-08-26 09:00:00 +0200") + n
  end_time = DateTime.parse("2018-08-26 23:59:00 +0200") + n
  deal = Deal.new(description: "10 shots", start_time: start_time, end_time: end_time, price: 160)
  deal.bar = mellemrummet
  deal.type = shots
  deal.save!
end

# MELLEMRUMMET deals

7.times do |n|
  start_time = DateTime.parse("2018-08-26 16:00:00 +0200") + n
  end_time = DateTime.parse("2018-08-26 23:59:00 +0200") + n
  deal = Deal.new(description: "Beer tasting! Booking needed", start_time: start_time, end_time: end_time, price: 175)
  deal.bar = ølbaren
  deal.type = special_offer
  deal.save!
end

# KATTENS deals

7.times do |n|
  start_time = DateTime.parse("2018-08-26 15:00:00 +0200") + n
  end_time = DateTime.parse("2018-08-26 20:00:00 +0200") + n
  deal = Deal.new(description: "All regular beer", start_time: start_time, end_time: end_time, price: 20)
  deal.bar = kattens
  deal.type = beer
  deal.save!
end

7.times do |n|
  start_time = DateTime.parse("2018-08-26 15:00:00 +0200") + n
  end_time = DateTime.parse("2018-08-26 20:00:00 +0200") + n
  deal = Deal.new(description: "1 shot", start_time: start_time, end_time: end_time, price: 20)
  deal.bar = kattens
  deal.type = shots
  deal.save!
end

7.times do |n|
  start_time = DateTime.parse("2018-08-26 15:00:00 +0200") + n
  end_time = DateTime.parse("2018-08-26 20:00:00 +0200") + n
  deal = Deal.new(description: "All special beer", start_time: start_time, end_time: end_time, price: 40)
  deal.bar = kattens
  deal.type = beer
  deal.save!
end

7.times do |n|
  start_time = DateTime.parse("2018-08-26 15:00:00 +0200") + n
  end_time = DateTime.parse("2018-08-26 20:00:00 +0200") + n
  deal = Deal.new(description: "All cider", start_time: start_time, end_time: end_time, price: 35)
  deal.bar = kattens
  deal.type = special_offer
  deal.save!
end

7.times do |n|
  start_time = DateTime.parse("2018-08-26 15:00:00 +0200") + n
  end_time = DateTime.parse("2018-08-26 20:00:00 +0200") + n
  deal = Deal.new(description: "Glass of wine", start_time: start_time, end_time: end_time, price: 35)
  deal.bar = kattens
  deal.type = special_offer
  deal.save!
end

# DET NY SCALA deals

7.times do |n|
  start_time = DateTime.parse("2018-08-26 11:00:00 +0200") + n
  end_time = DateTime.parse("2018-08-26 23:59:00 +0200") + n
  deal = Deal.new(description: "10 shots", start_time: start_time, end_time: end_time, price: 150)
  deal.bar = scala
  deal.type = shots
  deal.save!
end

7.times do |n|
  start_time = DateTime.parse("2018-08-26 11:00:00 +0200") + n
  end_time = DateTime.parse("2018-08-26 23:59:00 +0200") + n
  deal = Deal.new(description: "A bottle of white wine", start_time: start_time, end_time: end_time, price: 200)
  deal.bar = scala
  deal.type = special_offer
  deal.save!
end

7.times do |n|
  start_time = DateTime.parse("2018-08-26 11:00:00 +0200") + n
  end_time = DateTime.parse("2018-08-26 23:59:00 +0200") + n
  deal = Deal.new(description: "0.5L draft beer", start_time: start_time, end_time: end_time, price: 35)
  deal.bar = scala
  deal.type = beer
  deal.save!
end

7.times do |n|
  start_time = DateTime.parse("2018-08-26 11:00:00 +0200") + n
  end_time = DateTime.parse("2018-08-26 23:59:00 +0200") + n
  deal = Deal.new(description: "Double alcohol in drinks", start_time: start_time, end_time: end_time, price: 50)
  deal.bar = scala
  deal.type = happy_hour
  deal.save!
end

7.times do |n|
  start_time = DateTime.parse("2018-08-26 11:00:00 +0200") + n
  end_time = DateTime.parse("2018-08-26 23:59:00 +0200") + n
  deal = Deal.new(description: "All single drinks", start_time: start_time, end_time: end_time, price: 35)
  deal.bar = scala
  deal.type = special_offer
  deal.save!
end

# DEN GLADE GRIS deals

5.times do |n|
  start_time = DateTime.parse("2018-08-28 18:00:00 +0200") + n
  end_time = DateTime.parse("2018-08-28 23:59:00 +0200") + n
  deal = Deal.new(description: "10 shots", start_time: start_time, end_time: end_time, price: 125)
  deal.bar = glade_gris
  deal.type = shots
  deal.save!
end

5.times do |n|
  start_time = DateTime.parse("2018-08-28 18:00:00 +0200") + n
  end_time = DateTime.parse("2018-08-28 23:59:00 +0200") + n
  deal = Deal.new(description: "Bottle beer", start_time: start_time, end_time: end_time, price: 25)
  deal.bar = glade_gris
  deal.type = beer
  deal.save!
end

5.times do |n|
  start_time = DateTime.parse("2018-08-28 18:00:00 +0200") + n
  end_time = DateTime.parse("2018-08-28 23:59:00 +0200") + n
  deal = Deal.new(description: "4 Jägerbombs", start_time: start_time, end_time: end_time, price: 100)
  deal.bar = glade_gris
  deal.type = shots
  deal.save!
end

5.times do |n|
  start_time = DateTime.parse("2018-08-28 18:00:00 +0200") + n
  end_time = DateTime.parse("2018-08-28 23:59:00 +0200") + n
  deal = Deal.new(description: "Regular 0.5L draft beer", start_time: start_time, end_time: end_time, price: 29)
  deal.bar = glade_gris
  deal.type = beer
  deal.save!
end

# NØRRE BODEGA deals

7.times do |n|
  start_time = DateTime.parse("2018-08-26 17:00:00 +0200") + n
  end_time = DateTime.parse("2018-08-26 18:00:00 +0200") + n
  deal = Deal.new(description: "Golden Tuborg bottle beer", start_time: start_time, end_time: end_time, price: 10)
  deal.bar = nørre_bodega
  deal.type = beer
  deal.save!
end

3.times do |n|
  start_time = DateTime.parse("2018-08-26 10:00:00 +0200") + n
  end_time = DateTime.parse("2018-08-26 23:59:00 +0200") + n
  deal = Deal.new(description: "0.5L Tuborg draft beer", start_time: start_time, end_time: end_time, price: 20)
  deal.bar = nørre_bodega
  deal.type = beer
  deal.save!
end

4.times do |n|
  start_time = DateTime.parse("2018-08-29 10:00:00 +0200") + n
  end_time = DateTime.parse("2018-08-29 23:59:00 +0200") + n
  deal = Deal.new(description: "0.5L Tuborg draft beer", start_time: start_time, end_time: end_time, price: 24)
  deal.bar = nørre_bodega
  deal.type = beer
  deal.save!
end

7.times do |n|
  start_time = DateTime.parse("2018-08-26 10:00:00 +0200") + n
  end_time = DateTime.parse("2018-08-26 23:59:00 +0200") + n
  deal = Deal.new(description: "2 cl Gajol shot", start_time: start_time, end_time: end_time, price: 10)
  deal.bar = nørre_bodega
  deal.type = shots
  deal.save!
end

# MINI BAR deals

start_time = DateTime.parse("2018-08-30 19:00:00 +0200")
end_time = DateTime.parse("2018-08-30 23:59:00 +0200")
deal = Deal.new(description: "Big draft beer", start_time: start_time, end_time: end_time, price: 22)
deal.bar = mini_bar
deal.type = beer
deal.save!

3.times do |n|
  start_time = DateTime.parse("2018-08-30 19:00:00 +0200") + n
  end_time = DateTime.parse("2018-08-30 23:59:00 +0200") + n
  deal = Deal.new(description: "10 shots", start_time: start_time, end_time: end_time, price: 150)
  deal.bar = mini_bar
  deal.type = shots
  deal.save!
end

3.times do |n|
  start_time = DateTime.parse("2018-08-30 19:00:00 +0200") + n
  end_time = DateTime.parse("2018-08-30 23:59:00 +0200") + n
  deal = Deal.new(description: "A whole bottle of Asti", start_time: start_time, end_time: end_time, price: 125)
  deal.bar = mini_bar
  deal.type = special_offer
  deal.save!
end

# WALL STREET PUB deals

6.times do |n|
  start_time = DateTime.parse("2018-08-27 12:00:00 +0200") + n
  end_time = DateTime.parse("2018-08-27 21:30:00 +0200") + n
  deal = Deal.new(description: "2 for 1 bottle beer", start_time: start_time, end_time: end_time)
  deal.bar = wallstreet
  deal.type = beer
  deal.save!
end

4.times do |n|
  start_time = DateTime.parse("2018-08-27 21:30:00 +0200") + n
  end_time = DateTime.parse("2018-08-27 23:59:00 +0200") + n
  deal = Deal.new(description: "Big draft beer", start_time: start_time, end_time: end_time, price: 20)
  deal.bar = wallstreet
  deal.type = beer
  deal.save!
end

6.times do |n|
  start_time = DateTime.parse("2018-08-27 12:00:00 +0200") + n
  end_time = DateTime.parse("2018-08-27 23:59:00 +0200") + n
  deal = Deal.new(description: "Selected liquor bottle w. soda", start_time: start_time, end_time: end_time, price: 400)
  deal.bar = wallstreet
  deal.type = special_offer
  deal.save!
end

# DA VINCI deals

start_time = DateTime.parse("2018-08-31 16:00:00 +0200")
end_time = DateTime.parse("2018-08-31 23:59:00 +0200")
deal = Deal.new(description: "Mojitos all night", start_time: start_time, end_time: end_time, price: 40)
deal.bar = da_vinci
deal.type = special_offer
deal.save!

# ANDY'S deals

start_time = DateTime.parse("2018-08-31 14:00:00 +0200")
end_time = DateTime.parse("2018-08-31 19:00:00 +0200")
deal = Deal.new(description: "0.5L Tuborg draft beer", start_time: start_time, end_time: end_time, price: 25)
deal.bar = andys
deal.type = beer
deal.save!

# DUPONG deals

start_time = DateTime.parse("2018-08-29 19:00:00 +0200")
end_time = DateTime.parse("2018-08-29 23:59:00 +0200")
deal = Deal.new(description: "All night long", start_time: start_time, end_time: end_time)
deal.bar = dupong
deal.type = happy_hour
deal.save!

start_time = DateTime.parse("2018-08-30 19:00:00 +0200")
end_time = DateTime.parse("2018-08-30 23:59:00 +0200")
deal = Deal.new(description: "All night long", start_time: start_time, end_time: end_time)
deal.bar = dupong
deal.type = happy_hour
deal.save!

# DET RENE GLAS deals

7.times do |n|
  start_time = DateTime.parse("2018-08-26 11:00:00 +0200") + n
  end_time = DateTime.parse("2018-08-26 17:00:00 +0200") + n
  deal = Deal.new(description: "Regular bottle beer", start_time: start_time, end_time: end_time, price: 10)
  deal.bar = det_rene_glas
  deal.type = beer
  deal.save!
end

7.times do |n|
  start_time = DateTime.parse("2018-08-26 17:00:00 +0200") + n
  end_time = DateTime.parse("2018-08-26 23:59:00 +0200") + n
  deal = Deal.new(description: "Regular bottle beer", start_time: start_time, end_time: end_time, price: 15)
  deal.bar = det_rene_glas
  deal.type = beer
  deal.save!
end

7.times do |n|
  start_time = DateTime.parse("2018-08-26 11:00:00 +0200") + n
  end_time = DateTime.parse("2018-08-26 23:59:00 +0200") + n
  deal = Deal.new(description: "0.5 liquor bottle w. soda", start_time: start_time, end_time: end_time, price: 200)
  deal.bar = det_rene_glas
  deal.type = special_offer
  deal.save!
end

7.times do |n|
  start_time = DateTime.parse("2018-08-26 11:00:00 +0200") + n
  end_time = DateTime.parse("2018-08-26 23:59:00 +0200") + n
  deal = Deal.new(description: "1 liquor bottle w. soda", start_time: start_time, end_time: end_time, price: 375)
  deal.bar = det_rene_glas
  deal.type = special_offer
  deal.save!
end

# MEXIBAR deals

6.times do |n|
  start_time = DateTime.parse("2018-08-27 19:00:00 +0200") + n
  end_time = DateTime.parse("2018-08-27 21:30:00 +0200") + n
  deal = Deal.new(description: "Double up on alcohol in drinks", start_time: start_time, end_time: end_time)
  deal.bar = mexibar
  deal.type = happy_hour
  deal.save!
end

start_time = DateTime.parse("2018-08-31 15:00:00 +0200")
end_time = DateTime.parse("2018-08-31 19:00:00 +0200")
deal = Deal.new(description: "All regular drinks", start_time: start_time, end_time: end_time, price: 35)
deal.bar = mexibar
deal.type = special_offer
deal.save!

start_time = DateTime.parse("2018-08-31 15:00:00 +0200")
end_time = DateTime.parse("2018-08-31 19:00:00 +0200")
deal = Deal.new(description: "6 tequila shots", start_time: start_time, end_time: end_time, price: 100)
deal.bar = mexibar
deal.type = shots
deal.save!

start_time = DateTime.parse("2018-08-31 15:00:00 +0200")
end_time = DateTime.parse("2018-08-31 19:00:00 +0200")
deal = Deal.new(description: "3 shots", start_time: start_time, end_time: end_time, price: 50)
deal.bar = mexibar
deal.type = shots
deal.save!

start_time = DateTime.parse("2018-08-31 15:00:00 +0200")
end_time = DateTime.parse("2018-08-31 19:00:00 +0200")
deal = Deal.new(description: "7 shots", start_time: start_time, end_time: end_time, price: 100)
deal.bar = mexibar
deal.type = shots
deal.save!

puts "FINISHED"

