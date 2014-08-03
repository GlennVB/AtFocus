class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :title
      t.text :body
      t.integer :posted_by
      t.integer :resource_id
      t.string :resource_type

      t.timestamps
    end
  end
end
