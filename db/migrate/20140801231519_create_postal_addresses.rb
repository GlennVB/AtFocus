class CreatePostalAddresses < ActiveRecord::Migration
  def change
    create_table :postal_addresses do |t|
      t.integer :addressCountry_id
      t.string :addressLocality
      t.string :addressRegion
      t.string :postalCode
      t.string :streetAddress

      t.timestamps
    end
  end
end
