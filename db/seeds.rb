# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


e = Event.create!(season: "L1-2020", date: DateTime.now)

c = Category.create!(name: "CAT1")

i = Inventory.create!(category: c, event: e)
