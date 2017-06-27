class InitProduct < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name, null: false, default: "", unique: true
      t.text :description
      t.string :barcode, default: "", unique: true
      t.integer :price, default: 0, null: false, unsigned: true
      t.integer :qty, default: 0, null: false
      t.timestamp :delete_at
      t.timestamps
    end

    add_index :products, :name, unique: true
    add_index :products, :barcode, unique: true
  end
end
