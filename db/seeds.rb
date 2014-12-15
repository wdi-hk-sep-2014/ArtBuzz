# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Venue.destroy_all
grottoFineArt = Venue.create(name: "GROTTO Fine Art", address: "1-2/F, C-D Wyndham Street, Hong Kong", district: "Central", hours: "Mon-Sat: 11am-7pm")
karinWeberGallery = Venue.create(name: "Karin Weber Gallery", address: "G/F, 20 Aberdeen Street, Hong Kong", district: "Central", hours: "Tue-Sat: 11am-7pm")

Event.destroy_all
Event.create(artist: "Brainrental, Tina Buchholtz, Vincent Ip, Fay Ku, Carmen Ng, Willi Siber, Wang Xiaoluo & Xue Mo", title: "A Trove of Small Treasures", open: "December 16, 2014", time: "6pm", close: "January 15, 2015", venue: grottoFineArt)
Event.create(artist: "Eunice Cheung", title: "The Bird Catchers", open: "December 17, 2014", time: "5:30pm", close: "January 10, 2015", venue: karinWeberGallery)

