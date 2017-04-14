# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


b01= User.create!({:email => "carlos@adiosquincena.com", :password => "adiosquincena2016", :password_confirmation => "adiosquincena2016", :admin => true, :name => "Carlos" })
b02= User.create!({:email => "luis@adiosquincena.com", :password => "adiosquincena2016", :password_confirmation => "adiosquincena2016", :admin => true, :name => "Luis" })
b03= User.create!({:email => "alex@adiosquincena.com", :password => "adiosquincena2016", :password_confirmation => "adiosquincena2016", :admin => true, :name => "Alex" })

c01= Category.create!({:name => "Regalos para él"})
c02= Category.create!({:name => "Regalos para ella"})
c03= Category.create!({:name => "Geek"})
c04= Category.create!({:name => "Gadgets & Gear"})
c05= Category.create!({:name => "Regalos para niños"})
c06= Category.create!({:name => "Casa y Oficina"})
c07= Category.create!({:name => "Juegos y Juguetes"})
c08= Category.create!({:name => "Comida y Bebida"})
c09= Category.create!({:name => "Mascotas"})


d01= Subcategory.create!({:category_id => 1, :name => "Accesorios"})

d03= Subcategory.create!({:category_id => 2, :name => "Belleza"})
d04= Subcategory.create!({:category_id => 2, :name => "Accesorios"})

d05= Subcategory.create!({:category_id => 3, :name => "Gamers"})
d06= Subcategory.create!({:category_id => 3, :name => "Tecnología"})
d07= Subcategory.create!({:category_id => 3, :name => "Humor de Internet"})
d08= Subcategory.create!({:category_id => 3, :name => "Star Wars"})
d09= Subcategory.create!({:category_id => 3, :name => "Películas"})
d010= Subcategory.create!({:category_id => 3, :name => "Series"})
d011= Subcategory.create!({:category_id => 3, :name => "Retro"})

d011= Subcategory.create!({:category_id => 4, :name => "Herramientas"})
d012= Subcategory.create!({:category_id => 4, :name => "Movilidad"})
d013= Subcategory.create!({:category_id => 4, :name => "Accesorios"})
d014= Subcategory.create!({:category_id => 4, :name => "Para viajes"})
d015= Subcategory.create!({:category_id => 4, :name => "Fotografía"})
d016= Subcategory.create!({:category_id => 4, :name => "Salud"})
d017= Subcategory.create!({:category_id => 4, :name => "Música"})
d018= Subcategory.create!({:category_id => 4, :name => "Para tu bici"})
d019= Subcategory.create!({:category_id => 4, :name => "Para la bebida"})
d020= Subcategory.create!({:category_id => 4, :name => "Para acampar"})
d021= Subcategory.create!({:category_id => 4, :name => "De todos los días"})

d022= Subcategory.create!({:category_id => 5, :name => "Regalos"})

d022= Subcategory.create!({:category_id => 6, :name => "Lámparas y relojes"})
d023= Subcategory.create!({:category_id => 6, :name => "Oficina"})
d024= Subcategory.create!({:category_id => 6, :name => "Cocina y para cocina"})
d025= Subcategory.create!({:category_id => 6, :name => "Para el cuarto"})
d026= Subcategory.create!({:category_id => 6, :name => "Para el baño"})
d027= Subcategory.create!({:category_id => 6, :name => "Alberca y Jardín"})
d028= Subcategory.create!({:category_id => 6, :name => "Decoración"})
d029= Subcategory.create!({:category_id => 6, :name => "Libros y lectura"})
d030= Subcategory.create!({:category_id => 6, :name => "Seguridad"})
d031= Subcategory.create!({:category_id => 6, :name => "Recuerdos"})

d032= Subcategory.create!({:category_id => 7, :name => "Figuras de Acción"})
d033= Subcategory.create!({:category_id => 7, :name => "Control Remoto"})
d034= Subcategory.create!({:category_id => 7, :name => "Peluches"})

d035= Subcategory.create!({:category_id => 8, :name => "Comibles y Bebibles"})
d036= Subcategory.create!({:category_id => 8, :name => "Tazas y Vasos"})
d037= Subcategory.create!({:category_id => 8, :name => "Utensilios de comida"})
d038= Subcategory.create!({:category_id => 8, :name => "Moldes y recipientes"})
d039= Subcategory.create!({:category_id => 8, :name => "Para el vino"})

d040= Subcategory.create!({:category_id => 9, :name => "Accesorios"})


