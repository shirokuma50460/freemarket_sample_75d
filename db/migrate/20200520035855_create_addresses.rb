class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.integer :post_code,        null: false
      t.string :prefecture,        null: false
      t.string :city,              null: false
      t.string :block,             null: false
      t.text :building
      t.string :telephone_number, unique: true
      t.integer :user_id
      t.references :user
      t.timestamps
    end
  end
end
