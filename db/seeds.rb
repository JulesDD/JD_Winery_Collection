# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require 'csv'

CountryMade.destroy_all
ProvinceMade.destroy_all
RegionMade.destroy_all
Variety.destroy_all
Winery.destroy_all
Product.destroy_all

csv_file = Rails.root + 'db/Wine-reviews-dataset-2019.csv'
products = SmarterCSV.process(csv_file, col_sep: ',')

products[0..30].each do |product|
  c = CountryMade.find_or_create_by(countryMade: product[:countryMade])
  prov = ProvinceMade.find_or_create_by(provinceMade: product[:provinceMade])
  r = RegionMade.find_or_create_by(regionMade: product[:regionMade])
  v = Variety.find_or_create_by(variety_name: product[:variety])
  w = Winery.find_or_create_by(winery_name: product[:winery])

  c.products.create(
    designation: product[:designation],
    description: product[:description],
    price: product[:price],
    quantity: Faker::Number.within(range: 10..100),
    stockDate: Faker::Date.between(from: 730.days.ago, to: Date.today),
    provinceMade: prov,
    regionMade: r,
    variety: v,
    winery: w,
    countryMade: c
  )

end

puts "Generated #{CountryMade.count} countries."
puts "Generated #{ProvinceMade.count} products."
puts "Generated #{RegionMade.count} regions."
puts "Generated #{Variety.count} varieties."
puts "Generated #{Winery.count} wineries."
puts "Generated #{WineProduct.count} products"
AdminUser.create!(email: 'jdouglas@rrc.ca', password: 'pass146825', password_confirmation: 'pass146825') if Rails.env.development?
