Bar.destroy_all
Type.destroy_all
Deal.destroy_all


puts 'Creating 2 bars'
mexibar = Bar.new(
  name: "Mexi Bar",
  opening_hour: "17:00",
  address: "Elmegade 27, Nørrebro",
  photo: "http://www.mexibar.dk/wp-content/uploads/2018/05/2014-03-26-23.28.07-1024x683.jpg",
  phone_number: "64646464",
  email: "email@email.com",
  website: "http://website.com",
  smoking: false,
  dancing: false
)
mexibar.save!

kassen = Bar.new(
  name: "Kassen",
  opening_hour: "10:00",
  address: "Nørrebrogade 18, Nørrebro",
  photo: "http://druk.dk/billeder/kassen.png",
  phone_number: "12345678", email: "email@email.com",
  website: "http://website.com",
  smoking: true,
  dancing: true
)
kassen.save!
puts 'Finished!'

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


puts 'Creating 4 deals'
Time.zone = 'Europe/Copenhagen'

start_time = DateTime.parse("2018-08-27 22:00:00 +0200")
end_time = DateTime.parse("2018-08-27 23:00:00 +0200")
deal1 = Deal.new(description: "Double up on alcohol", start_time: start_time, end_time: end_time, price: 180)
deal1.bar = mexibar
deal1.type = open_bar
deal1.save!

start_time = DateTime.parse("2018-08-27 12:30:00 +0200")
end_time = DateTime.parse("2018-08-27 23:30:00 +0200")
deal2 = Deal.new(description: "Two for one", start_time: start_time, end_time: end_time, price: 10)
deal2.bar = mexibar
deal2.type = open_bar
deal2.save!

start_time = DateTime.parse("2018-08-28 14:30:00 +0200")
end_time = DateTime.parse("2018-08-28 23:00:00 +0200")
deal3 = Deal.new(description: "All drinks on the menu", start_time: start_time, end_time: end_time, price: 200)
deal3.bar = kassen
deal3.type  = beer
deal3.save!

start_time = DateTime.parse("2018-08-27 21:30:00 +0200")
end_time = DateTime.parse("2018-08-27 23:30:00 +0200")
deal4 = Deal.new(description: "It's your birthday! Get a free bottle", start_time: start_time, end_time: end_time, price: 100)
deal4.bar = kassen
deal4.type = beer
deal4.save!

start_time = DateTime.parse("2018-08-29 21:30:00 +0200")
end_time = DateTime.parse("2018-08-29 23:30:00 +0200")
deal4 = Deal.new(description: "It's your birthday! Get a free bottle", start_time: start_time, end_time: end_time, price: 100)
deal4.bar = kassen
deal4.type = beer
deal4.save!

start_time = DateTime.parse("2018-08-29 21:30:00 +0200")
end_time = DateTime.parse("2018-08-29 23:30:00 +0200")
deal4 = Deal.new(description: "It's your birthday! Get a free bottle", start_time: start_time, end_time: end_time, price: 100)
deal4.bar = kassen
deal4.type = special_offer
deal4.save!

start_time = DateTime.parse("2018-08-30 21:30:00 +0200")
end_time = DateTime.parse("2018-08-30 23:30:00 +0200")
deal4 = Deal.new(description: "It's your birthday! Get a free bottle", start_time: start_time, end_time: end_time, price: 100)
deal4.bar = mexibar
deal4.type = special_offer
deal4.save!

start_time = DateTime.parse("2018-08-31 21:30:00 +0200")
end_time = DateTime.parse("2018-08-31 23:30:00 +0200")
deal4 = Deal.new(description: "It's your birthday! Get a free bottle", start_time: start_time, end_time: end_time, price: 100)
deal4.bar = kassen
deal4.type = shots
deal4.save!

start_time = DateTime.parse("2018-08-31 21:30:00 +0200")
end_time = DateTime.parse("2018-08-31 23:30:00 +0200")
deal4 = Deal.new(description: "It's your birthday! Get a free bottle", start_time: start_time, end_time: end_time, price: 100)
deal4.bar = mexibar
deal4.type = happy_hour
deal4.save!
puts 'Finished!'







