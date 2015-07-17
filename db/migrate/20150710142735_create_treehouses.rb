class CreateTreehouses < ActiveRecord::Migration
  def change
    create_table :treehouses do |t|

      t.timestamps null: false
    end
  end
end
