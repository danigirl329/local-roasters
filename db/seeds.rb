# Clear existing data
Review.destroy_all
Favorite.destroy_all
CoffeeTag.destroy_all
Coffee.destroy_all
Location.destroy_all
Roaster.destroy_all
Tag.destroy_all
User.destroy_all

# Create Users
users = User.create!([
  { email: "alice@example.com", password_digest: "password", name: "Alice" },
  { email: "bob@example.com", password_digest: "password", name: "Bob" }
])

# Create Roasters
roasters = Roaster.create!([
  { name: "Bean Roasters", location: "New York, NY", description: "Award-winning micro-roaster", website: "https://beanroasters.com", rating: 4.5 },
  { name: "Brew Masters", location: "San Francisco, CA", description: "Locally sourced, artisan roasts", website: "https://brewmasters.com", rating: 4.8 }
])

# Create Coffees
coffees = Coffee.create!([
  { name: "Morning Bliss", roaster: roasters.first, origin: "Colombia", roast_level: "Light", flavor_notes: "Fruity, Bright", price: 15.99 },
  { name: "Midnight Oil", roaster: roasters.last, origin: "Ethiopia", roast_level: "Dark", flavor_notes: "Bold, Chocolatey", price: 17.99 }
])

# Create Locations
locations = Location.create!([
  { roaster: roasters.first, address: "123 Main St", city: "New York", state: "NY", zip_code: "10001" },
  { roaster: roasters.last, address: "456 Elm St", city: "San Francisco", state: "CA", zip_code: "94102" }
])

# Create Tags
tags = Tag.create!([
  { name: "Fruity" },
  { name: "Bold" },
  { name: "Chocolatey" }
])

# Associate Coffees with Tags
CoffeeTag.create!([
  { coffee: coffees.first, tag: tags.first },
  { coffee: coffees.last, tag: tags.second },
  { coffee: coffees.last, tag: tags.third }
])

# Create Reviews
reviews = Review.create!([
  { user: users.first, roaster: roasters.first, content: "Great coffee, will buy again!", rating: 5 },
  { user: users.last, roaster: roasters.last, content: "Loved the bold flavor!", rating: 4 }
])

# Create Favorites
favorites = Favorite.create!([
  { user: users.first, roaster: roasters.last },
  { user: users.last, roaster: roasters.first }
])
