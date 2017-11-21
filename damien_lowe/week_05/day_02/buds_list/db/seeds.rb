# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Bud.destroy_all

Bud.create :name => "Jedi Kush", :family => "Indica", :ancestors => "Death Star Kush", :THC => 22, :CBD => 1
Bud.create :name => "Stephen Hawking Kush", :family => "Indica", :ancestors => "Harle-tsu", :THC => 5 , :CBD => 5
Bud.create :name => "Doug's Varin", :family => "Sativa", :ancestors => "Unknown", :THC => 19, :CBD => 0.2
Bud.create :name => "Amnesia Haze", :family => "Sativa", :ancestors => "Haze, Afghani, Jamaican", :THC => 22, :CBD => 1
Bud.create :name => "Galactic Jack", :family => "Sativa", :ancestors => "Jack Herer, Space Queen", :THC => 18, :CBD => 0.6
