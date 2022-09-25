class CreateInventories < ActiveRecord::Migration[7.0]
  def change
    create_table :inventories do |t|
      t.string :code
      t.integer :status
      t.references :book, null: false, foreign_key: true

      t.timestamps
    end
  end
end
