class CreateListings < ActiveRecord::Migration
  def change
    create_table(:listings) do |t|
      t.decimal :rent
      t.text :name
      t.decimal :sqft
      t.integer :beds
      t.decimal :baths
      
      #for google maps/geocoder
      t.string :address      
      t.float :longitude
      t.float :latitude
            
      t.integer :user_id
      
      t.timestamps

    end
    add_index :listings, :user_id

  end
end
