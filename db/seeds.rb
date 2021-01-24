# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(family_name: "管理者",
  first_name: "管理者",
  family_name_kana: "カンリシャ",
  first_name_kana: "カンリシャ",
  birth_date_id: "1996-01-15",
  phone_number: "00000000000",
  email: "admin@testtest",
  password:  "noesouta87",
  password_confirmation: "noesouta87",
  admin: 1,
  admin: true)
