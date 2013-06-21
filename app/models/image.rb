class Image < ActiveRecord::Base
  attr_accessible :name, :image_url, :user_id, :listing_id

  belongs_to :user
  belongs_to :listing
end
