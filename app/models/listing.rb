class Listing < ActiveRecord::Base
  attr_accessible :rent, :name, :sqft, :beds, :baths, :user_id,
                #geocoder
                  :address, :longitude, :latitude
                #for jquery multiple file upload
                 # :name, :image_url
  
  belongs_to :user
  has_many :images, :dependent => :destroy

#geocoder
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?

end
