# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
r1 = Roaster.create( name: 'Prestogeorge Coffee & Tea' ,  website: 'https://www.prestogeorge.com/' ,  delivers: 'Y' )
r2 = Roaster.create( name: 'Commonplace Coffee' ,  website: 'https://commonplacecoffee.com/' ,  delivers: 'N'  )
r3 = Roaster.create( name: "Zeke's Coffee" ,  website: 'https://www.zekescoffeepgh.com/' ,  delivers: 'N'  )
l1 = Location.create( street_address: '1719 Penn Ave' ,  city: 'Pittsburgh' ,  state: 'PA' ,  zip_code: '15222' ,  roaster_id: r1.id )
l2 = Location.create( street_address: '6736 Reynolds St' ,  city: 'Pittsburgh' ,  state: 'PA' ,  zip_code: '15206' ,  roaster_id: r2.id )
l3 = Location.create( street_address: '5827 Forbes Ave' ,  city: 'Pittsburgh' ,  state: 'PA' ,  zip_code: '15217' ,  roaster_id: r2.id )
l4 = Location.create( street_address: '6015 Penn Ave' ,  city: 'Pittsburgh' ,  state: 'PA' ,  zip_code: '15206' ,  roaster_id: r3.id )