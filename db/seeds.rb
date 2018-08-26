Bar.destroy_all
Type.destroy_all
Deal.destroy_all


puts 'Creating 2 bars'
bar1 = Bar.new(name: "Mexi Bar",
  opening_hour: "17:00",
  address: "Elmegade 27,
  Nørrebro",
  photo: "http://www.mexibar.dk/wp-content/uploads/2018/05/2014-03-26-23.28.07-1024x683.jpg",
  phone_number: "64646464",
  email: "email@email.com",
  website: "http://website.com",
  smoking: false,
  dancing: false
)
bar1.save!

bar2 = Bar.new(name: "Kassen",
    opening_hour: "10:00",
  address: "Nørrebrogade 18,
  Nørrebro",
  photo: "http://druk.dk/billeder/kassen.png",
  phone_number: "12345678", email: "email@email.com",
  website: "http://website.com",
  smoking: true,
  dancing: true
)
bar2.save!
puts 'Finished!'

puts 'Creating all types'
type1 = Type.new(name: "Beer")
type1.fa_icon = "fas fa-beer"
type1.save!

type2 = Type.new(name: "Happy Hour")
type2.fa_icon = "fas fa-glass-martini"
type2.save!

type3 = Type.new(name: "Open Bar")
type3.fa_icon = "fas fa-wine-glass-alt"
type3.save!

type4 = Type.new(name: "Special Offer")
type4.fa_icon = "fas fa-bolt"
type4.save!

type5 = Type.new(name: "Shots")
type5.fa_icon = "fab fa-bitbucket"
type5.save!
puts 'Finished!'


puts 'Creating 4 deals'
Time.zone = 'Europe/Copenhagen'

start_time = DateTime.parse("2018-08-24 22:00:00 +0200")
end_time = DateTime.parse("2018-08-24 23:00:00 +0200")
deal1 = Deal.new(description: "Double up on alcohol", start_time: start_time, end_time: end_time, price: 180)
deal1.bar = bar1
deal1.type = type1
deal1.save!

start_time = DateTime.parse("2018-08-24 12:30:00 +0200")
end_time = DateTime.parse("2018-08-24 23:30:00 +0200")
deal2 = Deal.new(description: "Two for one", start_time: start_time, end_time: end_time, price: 10)
deal2.bar = bar1
deal2.type = type2
deal2.save!

start_time = DateTime.parse("2018-08-24 14:30:00 +0200")
end_time = DateTime.parse("2018-08-24 23:00:00 +0200")
deal3 = Deal.new(description: "All drinks on the menu", start_time: start_time, end_time: end_time, price: 200)
deal3.bar = bar2
deal3.type  = type3
deal3.save!

start_time = DateTime.parse("2018-08-24 21:30:00 +0200")
end_time = DateTime.parse("2018-08-24 23:30:00 +0200")
deal4 = Deal.new(description: "It's your birthday! Get a free bottle", start_time: start_time, end_time: end_time, price: 100)
deal4.bar = bar2
deal4.type = type4
deal4.save!

start_time = DateTime.parse("2018-08-27 21:30:00 +0200")
end_time = DateTime.parse("2018-08-27 23:30:00 +0200")
deal4 = Deal.new(description: "It's your birthday! Get a free bottle", start_time: start_time, end_time: end_time, price: 100)
deal4.bar = bar2
deal4.type = type4
deal4.save!

start_time = DateTime.parse("2018-08-27 21:30:00 +0200")
end_time = DateTime.parse("2018-08-27 23:30:00 +0200")
deal4 = Deal.new(description: "It's your birthday! Get a free bottle", start_time: start_time, end_time: end_time, price: 100)
deal4.bar = bar2
deal4.type = type4
deal4.save!

start_time = DateTime.parse("2018-08-27 21:30:00 +0200")
end_time = DateTime.parse("2018-08-27 23:30:00 +0200")
deal4 = Deal.new(description: "It's your birthday! Get a free bottle", start_time: start_time, end_time: end_time, price: 100)
deal4.bar = bar1
deal4.type = type2
deal4.save!

start_time = DateTime.parse("2018-08-27 21:30:00 +0200")
end_time = DateTime.parse("2018-08-27 23:30:00 +0200")
deal4 = Deal.new(description: "It's your birthday! Get a free bottle", start_time: start_time, end_time: end_time, price: 100)
deal4.bar = bar2
deal4.type = type3
deal4.save!

start_time = DateTime.parse("2018-08-27 21:30:00 +0200")
end_time = DateTime.parse("2018-08-27 23:30:00 +0200")
deal4 = Deal.new(description: "It's your birthday! Get a free bottle", start_time: start_time, end_time: end_time, price: 100)
deal4.bar = bar1
deal4.type = type1
deal4.save!
puts 'Finished!'







