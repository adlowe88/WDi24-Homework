# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Bud.destroy_all

Bud.create :name => "Northern Lights", :family => "Indica", :ancestors => "Afghani, Thai", :THC => 26, :CBD => 0.7, :image => "https://herb.co/wp-content/uploads/2016/10/Northern-Lights-hero.jpg"
Bud.create :name => "God's Gift", :family => "Indica", :ancestors => "OG Kush, Grandaddy Purple", :THC => 20, :CBD => 0.1, :image => "https://herb.co/wp-content/uploads/2016/08/Gods_Gift.jpg"
Bud.create :name => "Doug's Varin", :family => "Sativa", :ancestors => "Unknown", :THC => 19, :CBD => 0.2, :image => "https://herb.co/wp-content/uploads/2017/04/Dougs-Varin.jpg"
Bud.create :name => "Jedi Kush", :family => "Indica", :ancestors => "Death Star Kush", :THC => 22, :CBD => 1, :image => "https://herb.co/wp-content/uploads/2017/05/Jedi-Kush.jpg "
Bud.create :name => "Stephen Hawking Kush", :family => "Indica", :ancestors => "Harle-tsu", :THC => 5 , :CBD => 5, :image => "https://herb.co/wp-content/uploads/2017/04/Stephen-Hawking-Kush.jpg"
Bud.create :name => "Girl Scout Cookies", :family => "Sativa/Indica", :ancestors => "OG Kush, Durban Poison", :THC => 24 , :CBD => 0.2, :image => "https://herb.co/wp-content/uploads/2016/08/Girl-Scout-Cookies-1-800x533.jpg"
Bud.create :name => "Amnesia Haze", :family => "Sativa", :ancestors => "Haze, Afghani, Jamaican", :THC => 22, :CBD => 1, :image => "https://herb.co/wp-content/uploads/2016/10/Amnesia-Haze-hero.jpg"
Bud.create :name => "Galactic Jack", :family => "Sativa", :ancestors => "Jack Herer, Space Queen", :THC => 18, :CBD => 0.6, :image => "https://herb.co/wp-content/uploads/2016/12/Galactic-Jack.jpg"
Bud.create :name => "Mango OG", :family => "Indica/Sativa(65/35)", :ancestors => "Mango Haze, SFV OG", :THC => 19, :CBD => 0.9, :image => "https://www.marijuana.com/wp-content/uploads/2016/07/Mango_OG-700x336.jpg"
Bud.create :name => "Tutankhamun (King Tut)", :family => "Sativa", :ancestors => "AK-47", :THC => 27, :CBD => 0.1, :image => "https://herb.co/wp-content/uploads/2017/02/tutankhamon.jpg"
Bud.create :name => "OG Kush", :family => "Indica", :ancestors => "Chemdawg, Hindu Kush", :THC => 20, :CBD => 0.2, :image => "https://herb.co/wp-content/uploads/2016/09/Traphouse_OG-Kush-16-800x533.jpg"
Bud.create :name => "Strawberry Banana", :family => "Indica", :ancestors => "Banana Kush, Bubble Gum", :THC => 24, :CBD => 0.1, :image => "https://herb.co/wp-content/uploads/2016/12/StrawberryBanana.jpg"
Bud.create :name => "Just an awesome picture...", :family => "Awesome", :ancestors => "Awesome", :THC => 100, :CBD => 0, :image => "https://i.pinimg.com/564x/4c/a6/3f/4ca63f1b915455c22bcde36f61af8dbc.jpg"
# Bud.create :name => "", :family => "", :ancestors => "", :THC => , :CBD => , :image => ""
