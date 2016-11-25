# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Ingredient.destroy_all
Ingredient.create( name: "lemon")
ice = Ingredient.create( name: "ice")
Mint = Ingredient.create( name: "mint leaves")
Ingredient.create( name: "rum")
Ingredient.create( name: "whisky")
Ingredient.create( name: "sour")
Ingredient.create( name: "lime")
Ingredient.create( name: "sugar cane syrup")
Ingredient.create( name: "sparkling water")


Cocktail.destroy_all
MintJulep = Cocktail.create( name: "Mint Julep", remote_photo_url: "http://punchdrink.com/wp-content/uploads/2013/09/MintJulep.jpg")
Cocktail.create( name: "Whisky sour", remote_photo_url: "http://www.carolinaheritageco.com/wp-content/uploads/2014/07/Jim-Beam-Bourbon-Whiskey-Sour.jpg")
Mojito = Cocktail.create( name: "Mojito", remote_photo_url: "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTdVYlA2iLCpBGiucUN6KYQGuJWPH8EcDZShNx1-LqZIcs9ZqgONg")

Dose.destroy_all
Dose.create(cocktail: MintJulep, ingredient: Mint , description: "6")
Dose.create(cocktail: Mojito, ingredient: ice , description: "6cl")
