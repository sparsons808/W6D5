# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Cat.destroy_all

Cat.create([
    {birth_date: '2012/02/13', color: 'Grey', name: 'Dorian', sex: 'M', description: "He's very self centered!"},
    {birth_date: '2002/05/15', color: 'Lavender', name: 'Grace', sex: 'F', description: "She's a smelly cat."},
    {birth_date: '2009/07/20', color: 'Orange', name: 'Garfield', sex: 'M', description: "He's always eating!"}])