class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :details
      t.decimal :price
      t.string :category

      t.timestamps
    end
  end
end
