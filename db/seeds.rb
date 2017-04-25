# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)




c10= Category.create!({:name => "Películas"})
c11= Category.create!({:name => "Series de T.V."})
c12= Category.create!({:name => "Caricaturas"})
c13= Category.create!({:name => "Libros"})
c14= Category.create!({:name => "Videojuegos"})
c15= Category.create!({:name => "Otros"})


e01= Subcategory.create!({:category_id => 10, :name => "Star Wars"})
e02= Subcategory.create!({:category_id => 10, :name => "Avengers"})
e03= Subcategory.create!({:category_id => 10, :name => "Guardianes de la Galaxia"})
e04= Subcategory.create!({:category_id => 10, :name => "Doctor Strange"})
e05= Subcategory.create!({:category_id => 10, :name => "Spider Man"})
e06= Subcategory.create!({:category_id => 10, :name => "X-men"})
e07= Subcategory.create!({:category_id => 10, :name => "Batman"})
e09= Subcategory.create!({:category_id => 10, :name => "Super Man"})
e10= Subcategory.create!({:category_id => 10, :name => "Liga de la Justicia"})
e11= Subcategory.create!({:category_id => 10, :name => "Jurassic Park"})
e12= Subcategory.create!({:category_id => 10, :name => "Volver al Futuro"})
e13= Subcategory.create!({:category_id => 10, :name => "Super Man"})
e14= Subcategory.create!({:category_id => 10, :name => "Disney"})
e14= Subcategory.create!({:category_id => 10, :name => "Transformers"})





df07= Subcategory.create!({:category_id => 11, :name => "Chavo del 8"})
df26= Subcategory.create!({:category_id => 11, :name => "Stranger Things"})
df27= Subcategory.create!({:category_id => 11, :name => "How I met Your Mother"})
df28= Subcategory.create!({:category_id => 11, :name => "Friends"})
df29= Subcategory.create!({:category_id => 11, :name => "Breaking Bad"})


df03= Subcategory.create!({:category_id => 12, :name => "Simpsons"})
df04= Subcategory.create!({:category_id => 12, :name => "Looney Tunes"})
df05= Subcategory.create!({:category_id => 12, :name => "Bob Esponja"})
df06= Subcategory.create!({:category_id => 12, :name => "Scooby Doo"})
df08= Subcategory.create!({:category_id => 12, :name => "Dragon Ball"})
df09= Subcategory.create!({:category_id => 12, :name => "Pokemon"})
df10= Subcategory.create!({:category_id => 12, :name => "Super Campeones"})
df11= Subcategory.create!({:category_id => 12, :name => "Caballeros del Zodiaco"})
df12= Subcategory.create!({:category_id => 12, :name => "Los Picapiedras"})
df13= Subcategory.create!({:category_id => 12, :name => "Los Super Sónicos"})
df14= Subcategory.create!({:category_id => 12, :name => "Don Gato"})
df15= Subcategory.create!({:category_id => 12, :name => "He-man"})
df16= Subcategory.create!({:category_id => 12, :name => "Popeye"})
df17= Subcategory.create!({:category_id => 12, :name => "Garfield"})
df18= Subcategory.create!({:category_id => 12, :name => "Plaza Sésamo"})
df19= Subcategory.create!({:category_id => 12, :name => "Charlie Brown"})
df20= Subcategory.create!({:category_id => 12, :name => "Pokemon"})
df21= Subcategory.create!({:category_id => 12, :name => "Fenomenoide"})
df22= Subcategory.create!({:category_id => 12, :name => "Beetlejuice"})
df23= Subcategory.create!({:category_id => 12, :name => "Hora de Aventura"})
df24= Subcategory.create!({:category_id => 12, :name => "Daria"})
df25= Subcategory.create!({:category_id => 12, :name => "Mafalda"})
df30= Subcategory.create!({:category_id => 12, :name => "Gravity Falls"})


d05= Subcategory.create!({:category_id => 13, :name => "El principito"})
d06= Subcategory.create!({:category_id => 13, :name => "Harry Potter"})
d07= Subcategory.create!({:category_id => 13, :name => "Dracula"})
d08= Subcategory.create!({:category_id => 13, :name => "Alicia en el país de las maravillas"})


d011= Subcategory.create!({:category_id => 14, :name => "Mario Bros"})
d012= Subcategory.create!({:category_id => 14, :name => "Zelda"})
d013= Subcategory.create!({:category_id => 14, :name => "Street Fighters"})
d014= Subcategory.create!({:category_id => 14, :name => "Megaman"})
d015= Subcategory.create!({:category_id => 14, :name => "Minecraft"})
d016= Subcategory.create!({:category_id => 14, :name => "Pac man"})
d017= Subcategory.create!({:category_id => 14, :name => "Warcraft"})
d018= Subcategory.create!({:category_id => 14, :name => "GTA"})

d022= Subcategory.create!({:category_id => 15, :name => "Lego"})
d024= Subcategory.create!({:category_id => 15, :name => "Rubik"})
d025= Subcategory.create!({:category_id => 15, :name => "Tetris"})
d026= Subcategory.create!({:category_id => 15, :name => "Moleskine"})