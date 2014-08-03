class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.string :legalName
      t.integer :address
      t.string :email
      t.string :faxNumber
      t.string :telephone
      t.string :taxId
      t.integer :businessCategory

      t.timestamps
    end
  end
end
