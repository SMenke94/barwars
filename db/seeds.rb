puts 'Creating 2 bars'
bar1 = Bar.new(name: "Mexi Bar", opening_hour: "17:00", address: "Elmegade 27, Nørrebro", photo: "http://www.mexibar.dk/wp-content/uploads/2018/05/2014-03-26-23.28.07-1024x683.jpg", contact_info: "64646464", smoking: false, dancing: false )
bar1.save!

bar2 = Bar.new(name: "Kassen", opening_hour: "10:00", address: "Nørrebrogade 18, Nørrebro", photo: "http://druk.dk/billeder/kassen.png", contact_info: "12345678", smoking: false, dancing: true )
bar2.save!
puts 'Finished!'

puts 'Creating 4 types'
type1 = Type.new(name: "Beer")
type1.save!

type2 = Type.new(name: "Happy Hour")
type2.save!

type3 = Type.new(name: "Open Bar")
type3.save!

type4 = Type.new(name: "Special Deal")
type4.save!
puts 'Finished!'


puts 'Creating 4 deals'
deal1 = Deal.new(description: "Double up on alcohol", start_time: "Thursday, 19:00" , end_time: "Thursday, 21:00", bar_id: 1, type_id: 1)
deal1.save!

deal2 = Deal.new(description: "Two for one", start_time: "Friday, 12:00", end_time: "Friday, 18:00", price: "10", bar_id: 1, type_id: 2)
deal2.save!

deal3 = Deal.new(description: "All drinks on the menu", start_time: "Wednesday, 20:00" , end_time: "Wednesday, 23:00", price: "200", bar_id: 2, type_id: 3)
deal3.save!

deal4 = Deal.new(description: "It's your birthday! Get a free bottle", start_time: "Thursday, 20:00" , end_time: "Thursday, 22:00", price: "100", bar_id: 2, type_id: 4)
deal4.save!
puts 'Finished!'









