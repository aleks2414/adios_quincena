class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description
      t.datetime :date
      t.references :user, index: true, foreign_key: true
      t.references :category, index: true, foreign_key: true
      t.references :subcategory, index: true, foreign_key: true
      t.boolean :favorite
      t.string :url
      t.string :image
      t.string :pro1
      t.string :pro2
      t.string :pro3
      t.string :pro4
      t.string :pro5
      t.string :con1
      t.string :con2
      t.string :con3
      t.string :con4
      t.string :con5
      t.string :link_review
      t.integer :amazon, default: 0
      t.integer :calidad, default: 0
      t.integer :garantia, default: 0
      t.integer :precio, default: 0
      t.integer :innovacion, default: 0
      t.integer :calificacion
      t.string :price
      

      t.timestamps null: false
    end
  end
end
