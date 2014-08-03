class CreateBusinessDashes < ActiveRecord::Migration
  def change
    create_table :business_dashes do |t|
      t.string :title
      t.text :description
      t.integer :business_id

      t.timestamps
    end
  end
end
