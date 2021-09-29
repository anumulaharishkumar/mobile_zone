class CreateStores < ActiveRecord::Migration[5.2]
  def change
    create_table :stores do |t|
      t.string :name
      t.float :price
      t.string :model
      t.string :color
      t.text :configuration

      t.timestamps
    end
  end
end
