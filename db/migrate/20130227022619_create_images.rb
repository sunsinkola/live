class CreateImages < ActiveRecord::Migration
  def self.up
    create_table :images do |t|
      t.string :name
      t.string :image_url
      t.integer :user_id
      t.integer :listing_id
      t.timestamps
    end
  end

  def self.down
    drop_table :images
  end
end
