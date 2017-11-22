# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Bud.destroy_all
Bud.create(:name => "Northern Lights", :strain => "Indica", :ancestors => "Afghani, Thai", :THC => 26, :CBD => 0.7, :image => "https://herb.co/wp-content/uploads/2016/10/Northern-Lights-hero.jpg")
Bud.create(:name => "God's Gift", :strain => "Indica", :ancestors => "OG Kush, Grandaddy Purple", :THC => 20, :CBD => 0.1, :image => "https://herb.co/wp-content/uploads/2016/08/Gods_Gift.jpg")
Bud.create(:name => "Doug's Varin", :strain => "Sativa", :ancestors => "Unknown", :THC => 19, :CBD => 0.2, :image => "https://herb.co/wp-content/uploads/2017/04/Dougs-Varin.jpg")
Bud.create(:name => "Jedi Kush", :strain => "Indica", :ancestors => "Death Star Kush", :THC => 22, :CBD => 1, :image => "https://herb.co/wp-content/uploads/2017/05/Jedi-Kush.jpg ")
Bud.create(:name => "Stephen Hawking Kush", :strain => "Indica", :ancestors => "Harle-tsu", :THC => 5 , :CBD => 5, :image => "https://herb.co/wp-content/uploads/2017/04/Stephen-Hawking-Kush.jpg")
Bud.create(:name => "Girl Scout Cookies", :strain => "Sativa/Indica", :ancestors => "OG Kush, Durban Poison", :THC => 24 , :CBD => 0.2, :image => "https://d3ix816x6wuc0d.cloudfront.net/hybrid/girl-scout-cookie/primary?width=480")
Bud.create(:name => "Amnesia Haze", :strain => "Sativa", :ancestors => "Haze, Afghani, Jamaican", :THC => 22, :CBD => 1, :image => "https://herb.co/wp-content/uploads/2016/10/Amnesia-Haze-hero.jpg")
Bud.create(:name => "Galactic Jack", :strain => "Sativa", :ancestors => "Jack Herer, Space Queen", :THC => 18, :CBD => 0.6, :image => "https://herb.co/wp-content/uploads/2016/12/Galactic-Jack.jpg")
Bud.create(:name => "Mango OG", :strain => "Indica/Sativa(65/35)", :ancestors => "Mango Haze, SFV OG", :THC => 19, :CBD => 0.9, :image => "https://www.marijuana.com/wp-content/uploads/2016/07/Mango_OG-700x336.jpg")
Bud.create(:name => "Tutankhamun (King Tut)", :strain => "Sativa", :ancestors => "AK-47", :THC => 27, :CBD => 0.1, :image => "https://herb.co/wp-content/uploads/2017/02/tutankhamon.jpg")
Bud.create(:name => "OG Kush", :strain => "Indica", :ancestors => "Chemdawg, Hindu Kush", :THC => 20, :CBD => 0.2, :image => "https://d3atagt0rnqk7k.cloudfront.net/wp-content/uploads/2016/01/12001420/best-cannabis-strains-for-focus-and-addadhd.jpg")
Bud.create(:name => "Strawberry Banana", :strain => "Indica", :ancestors => "Banana Kush, Bubble Gum", :THC => 24, :CBD => 0.1, :image => "https://mjnexpress.ca/wp-content/uploads/2017/10/Strawberry-Banana-Kush.jpg")
Bud.create(:name => "Just an awesome picture...", :strain => "Awesome", :ancestors => "Awesome", :THC => 100, :CBD => 0, :image => "https://i.pinimg.com/564x/4c/a6/3f/4ca63f1b915455c22bcde36f61af8dbc.jpg")








Artist.destroy_all
Artist.create(:name => "David Gilmour", :instrument => "Guitar, vocals, bass, keyboard", :genre => "Rock", :nationality => "English", :birth => "1946/03/06", :image => "https://www.morrisonhotelgallery.com/images/big/David%20Gilmour1975.jpg")
Artist.create(:name => "Roger Keith 'Syd' Barrett", :instrument => "Guitar, vocals", :genre => "Rock", :nationality => "English", :birth => "1946/01/06", :death => "2006/07/07", :image => "https://www.biography.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cg_face%2Cq_80%2Cw_300/MTE1ODA0OTcxOTgzNzM0Mjg1/pink-floyd-with-syd-barrett.jpg")
# Artist.create(:name => "", :instrument => "", :genre => "", :nationality => "", :birth => "", :death => "", :image => "")
