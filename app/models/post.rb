class Post < ActiveRecord::Base
    searchkick
  belongs_to :user
  belongs_to :category
  belongs_to :subcategory

    acts_as_taggable
    is_impressionable
    acts_as_votable

    
   before_save do
  self.calificacion = self.amazon + self.calidad + self.garantia + self.precio + self.precio
  end

    paginates_per 12

    extend FriendlyId
    friendly_id :title, use: [:finders, :slugged]

    # mount_uploader :photo, PhotoUploader


end

# == Schema Information
#
# Table name: scrapes
#
#  id          :integer          not null, primary key
#  url         :string(255)
#  title       :string(255)
#  description :text
#  images      :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null

