# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.where(name: "Bar/Pub").first_or_create(name: "Bar/Pub")
Category.where(name: "Asian").first_or_create(name: "Asian")
Category.where(name: "Indian").first_or_create(name: "Indian")
Category.where(name: "Italian").first_or_create(name: "Italian")
Category.where(name: "Sandwich Shop").first_or_create(name: "Sandwich Shop")
Category.where(name: "Cafe").first_or_create(name: "Cafe")
Category.where(name: "Spanish").first_or_create(name: "Spanish")
Category.where(name: "Mexican").first_or_create(name: "Mexican")
Category.where(name: "American").first_or_create(name: "American")
Category.where(name: "Steakhouse").first_or_create(name: "Steakhouse")


