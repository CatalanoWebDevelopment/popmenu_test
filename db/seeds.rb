# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
all_data = JSON.parse(File.read(Rails.root.join('db/restaurant_data.json')))

all_data['restaurants'].each do |restaurant|
  r = Restaurant.create(name: restaurant['name'])

  restaurant['menus'].each do |menu|
    m = Menu.create(name: menu['name'])
    r.menus.push(m)

    menu['items'].each do |item|
      i = Item.find_or_create_by(name: item['name'])
      l = Link.create(price: item['price'], menu: m, item: i)

      puts "Menu Item #{i.name} created. \n Item is linked to menu #{m.name}, which is associated to the Restaurant #{r.name}. \n"
    end
  end
end
