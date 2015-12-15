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



bushwick = Neighborhood.create(img_url: "https://upload.wikimedia.org/wikipedia/commons/f/f9/Knickerbocker_south_of_park.jpg", name: "Bushwick", state: "New York", city: "Brooklyn", zip: "11206")

williamsburg = Neighborhood.create(img_url: "https://upload.wikimedia.org/wikipedia/en/9/94/View_of_South_Williamsburg.jpg", name: "Williamsburg", state: "New York", city: "Brooklyn", zip: "11211")

uws = Neighborhood.create(img_url: "https://s3.amazonaws.com/citybuzz/2015/11/upper-west-side-nyc-relaxed-intellectual/upper-west-side-nyc-1.jpg", name: "Upper West Side", state: "New York", city: "New York", zip: "10025")

chelsea = Neighborhood.create(img_url: "http://luxuryrentalsmanhattan.com/sites/default/files/uploads/chelsea_neighborhood-nyc_1.jpg", name: "Chelsea", state: "New York", city: "New York", zip: "10011")




l1 = Listing.create(address: "123 Sesame Street", price_per_night: "$75", description: "Beautiful oceanfront property in the heart of Bushwick" img_url: "https://www.wheretostay.com/prop_photos/91000/91689/Grand-Villa-6-Anguilla-Covecastles_ocean-front.jpg.pagespeed.ce.P608shkenH.jpg")

l2 = Listing.create(address: "1428 Elm Street", price_per_night: "$100", description: "Gorgeous cabin in the wilderness of Williamsburg!" img_url: "https://s-media-cache-ak0.pinimg.com/736x/8b/b1/61/8bb161a35f414a71cc0e845609878847.jpg")

l3 = Listing.create(address: "112.5 Beacon Street", price_per_night: "$80", description: "Lovely Upper West Side teepees", img_url: "http://www.thecaseforwanderlust.com/wp-content/uploads/2013/10/IMG_4474.jpg")

l4 = Listing.create(address: "4 Privet Drive", price_per_night: "$90", description: "Romantic beach bungalow in the Chelsea neighborhood. Perfect romantic getaway for two!", img_url: "https://jodiesjourneys.files.wordpress.com/2012/06/moorea-pearl1.jpg")



alex.listings.push(l1)
natasha.listings.push(l2)
de.listings.push(l3)
julia.listings.push(l4)

bushwick.listings.push(l1)
williamsburg.listings.push(l2)
uws.listings.push(l3)
chelsea.listings.push(l4)