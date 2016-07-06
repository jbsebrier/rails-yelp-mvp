# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


restaurants_attr = [
  { name: "La pagode de jade",
    address: "15 rue des lilas, Paris",
    phone_number: "0123456785",
    category: "chinese" },
  { name: "Chez Fred une fois",
    address: "15 rue des frites, Paris",
    phone_number: "01323456785",
    category: "belgian" },
  { name: "Hazuki-sama",
    address: "15 rue des dragons, Paris",
    phone_number: "0123456785",
    category: "japanese" },
  { name: "chez Robert",
    address: "15 rue du Blanc, Paris",
    phone_number: "0123456743",
    category: "french" },
  { name: "Pietro's",
    address: "15 rue des pates, Paris",
    phone_number: "0123456295",
    category: "italian" }
]


restaurants_attr.each do |restaurant_hash|
  Restaurant.create(restaurant_hash)
end




