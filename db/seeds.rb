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