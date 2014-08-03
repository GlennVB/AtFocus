class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.integer :business_id
      t.integer :person_id

      t.timestamps
    end
  end
end
