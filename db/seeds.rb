# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

alex = User.create(email: "scho@gmail.com", password: "password", password_confirmation: "password", img_url: "http://i.telegraph.co.uk/multimedia/archive/01457/Steven_Gerrard_1457824i.jpg")

de = User.create(email: "hellomodupe@gmail.com", password: "abc", password_confirmation: "abc", img_url: "http://dribleo.com/wp-content/uploads/2008/03/anillos-de-michael-jordan.jpg")

natasha = User.create(email: "natasha@aol.com", password: "natasha", password_confirmation: "natasha", img_url: "http://history-world.org/queen_elizabeth_armada_portrait.jpg")

julia = User.create(email: "julia@hotmail.com", password: "frank", password_confirmation: "frank", img_url: "http://blogs.emulex.com/labs/files/2013/04/Martha-Stewart-Jail.jpg")

bushwick = Neighborhood.create(name: "Bushwick", state: "New York", city: "Brooklyn", zip: "11206")

williamsburg = Neighborhood.create(name: "Williamsburg", state: "New York", city: "Brooklyn", zip: "11211")

uws = Neighborhood.create(name: "Upper West Side", state: "New York", city: "New York", zip: "10025")

chelsea = Neighborhood.create(name: "Chelsea", state: "New York", city: "New York", zip: "10011")

l1 = Listing.create(address: "123 Sesame Street", price_per_night: "$75", description: "Beautiful oceanfront property in the heart of Williamsburg" img_url: "https://www.wheretostay.com/prop_photos/91000/91689/Grand-Villa-6-Anguilla-Covecastles_ocean-front.jpg.pagespeed.ce.P608shkenH.jpg")

li.user_id.push(alex)