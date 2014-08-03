class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :givenName
      t.string :familyName
      t.string :additionalName
      t.integer :address_id
      t.date :birthDate
      t.string :email
      t.string :faxNumber
      t.string :gender
      t.string :honorificPrefix
      t.string :honorificSuffix
      t.integer :nationality_id
      t.string :telephone

      t.timestamps
    end
  end
end
