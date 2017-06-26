class AddNameToManager < ActiveRecord::Migration[5.1]
  def up
    add_column :managers, :name, :string, default: ""
  end
  
  def down
    remove_column :managers, :name
  end
end
