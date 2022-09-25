class CreateSections < ActiveRecord::Migration[7.0]
  def change
    create_table :sections do |t|
      t.string :name
      t.string :from_bookcase_code
      t.string :to_bookcase_code

      t.timestamps
    end
  end
end
