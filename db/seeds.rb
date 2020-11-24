# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Creating users'

user1 = User.create!(email: "user1@user1.com",
                     password: 123456
                    )

user2 = User.create!(email: "user2@user2.com",
                     password: 123456
                    )

puts 'Users done'

puts 'adding products'
    product = Product.create!(
      name: 'Embroidery Kit For Beginner',
      details: 'Contains the necessary items you need to start and finish your first embroidery.',
      price: 50,
      category: 'Craft Supplies',
      user: user1
      )

    product = Product.create!(
      name: 'Photo Socks',
      details: 'Create a truly unique gift for that special person or add a personal touch to your own outfits with our fully customizable socks!',
      price: 20,
      category: 'Clothing',
      user: user2
      )

    product = Product.create!(
      name: 'PRINT flying bumblebee',
      details: 'This is an art print on paper of my flying bumblebee drawing.',
      price: 30,
      category: 'Art',
      user: user1
      )

    product = Product.create!(
      name: 'Among Us Crewmate Plush Game',
      details: 'Very Limited Stock, Only Available for a short time!',
      price: 100,
      category: 'Toys',
      user: user2
      )

    product = Product.create!(
      name: 'White Pottery Mug Ceramic Mug',
      details: "This white pottery mug is great for slow coffee drinkers. It's volume is about 10,5 oz. (300ml)",
      price: 10,
      category: 'Home',
      user: user1
      )

puts '2 Users and 5 Products created!'
