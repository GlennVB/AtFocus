class CreateRules < ActiveRecord::Migration
  def change
    create_table :rules do |t|
      t.string :resource_type
      t.integer :resource_id
      t.string :action
      t.string :permittee_type
      t.integer :permittee_id

      t.timestamps
    end
  end
end
