class Post < ActiveRecord::Base
    searchkick
  belongs_to :user
  belongs_to :category
  belongs_to :subcategory

    acts_as_taggable
    is_impressionable
    acts_as_votable

  validates :url, presence: true, :format => URI::regexp(%w(http https))

  before_save :scrape_with_grabbit

  mount_uploader :image, ImageUploader # Tells rails to use this uploader for this model.

    
   before_save do
  self.calificacion = self.amazon + self.calidad + self.garantia + self.precio + self.precio
  end

    paginates_per 30

    extend FriendlyId
    friendly_id :title, use: [:finders, :slugged]

    # mount_uploader :photo, PhotoUploader

    private 

    def scrape_with_grabbit

        # I highly recommend passing the following call off to a Resque worker, or Delayed Job queue.
        # The reason is that Grabbit will attempt to access the remote URL. If there is a network problem,
        # or the remote URL is unavailable, the following line could hang up your Rails process.

        data = Grabbit.url(url)

        if data
            self.description = data.description
        end

    end


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

