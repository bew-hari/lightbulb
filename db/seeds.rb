# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Categories
film = Category.create(name: 'Film')
music = Category.create(name: 'Music')
theatre = Category.create(name: 'Theatre')
videogame = Category.create(name: 'Video Game')